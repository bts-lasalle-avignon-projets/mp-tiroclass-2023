function execute(uuid, adder) {
    let l = uuid.split(';');
    let className = l[0];
    let slot = l[1];
    let number = document.getElementById(uuid + "-quantity").value;
    if (!adder) {
        number = -number;
    }
    let http = new XMLHttpRequest();
    http.open('POST', 'request/sqlexecution.php', true);

    http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    let sended = false;
    http.onreadystatechange = function() {
        if (http.responseText.includes("ERROR") && !sended) {
            sended = true;
            console.log("SQLExecution > Erreur d'entrée de valeur");
            alert("Vous ne pouvez pas avoir de nombre négatif !");
            location.reload();
        } else if (http.responseText.startsWith("SUCCESS") && !sended) {
            sended = true;
            console.log("SQLExecution > Entrée de valeur réussie");
            document.getElementById(uuid + "-number").textContent = http.responseText.split(';')[1];
        }
    }
    http.send("tiroir=" + slot + "&demande=" + number + "&index=" + className);
}

function serialWrite(uuid) {
    let l = uuid.split(';');
    let className = l[0];
    let slot = l[1];
    let http = new XMLHttpRequest();
    http.open('POST', 'request/serial.php', true);

    http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    let sended = false;
    http.onreadystatechange = function() {
        console.log(http.responseText);
        if (http.responseText.includes("ERROR") && !sended) {
            sended = true;
            console.log("PortWritter > Impossible d'accéder au port !");
            toggleLoadingScreen(true);
        } else if (http.responseText.includes("SUCCESS") && !sended) {
            sended = true;
            console.log("PortWritter > Accès au port réussi");
            toggleLoadingScreen(true);
        }
    }
    http.send("tiroir=" + slot + "&index=" + className);
}

function toggleLoadingScreen(enable) {
    let screen = document.getElementById("loading-locker");
    if (enable) {
        screen.style.display = "";
        readPort();
        console.log("LoadingScreen > Verrouillage de l'interface");
    } else {
        screen.style.display = "none";
        console.log("LoadingScreen > Désactivation automatique du verrouillage");
    }
}

function toggleSee() {
    let box = document.getElementById("request_box");
    let button = document.getElementById("request_button");
    if (box.style.display == "none") {
    	box.style.display = "";
    	button.textContent = "Cacher les requêtes";
        console.log("RequestMenu > Affichage des requêtes");
	} else {
    	box.style.display = "none";
    	button.textContent = "Afficher les requêtes";
        console.log("RequestMenu > Menu des requêtes caché");
	}
}

var night = false;

function toggleTheme(reload) {
    let img = document.getElementById("theme");
    let body = document.getElementById("body");
    let box = document.getElementById("request_box");
    if (night && !reload) {
        img.src = "img/sun.png";
        body.className = "";
        if (box != null) {
            box.className = "request_box-sun";
        }
    } else if (!reload) {
        console.log("Theme > Application thème sombre");
        img.src = "img/moon.png";
        body.className = "body-night";
        if (box != null) {
            box.className = "request_box-night";
        }
    }
    if (reload) {
        swichURL();
    }
    night = !night;
}

window.onload = function() {
    let URL = document.location.href;
    if (URL.includes("theme=night")) {
        console.log("Theme > Chargement du thème sombre");
        toggleTheme(false);
    } else {
        console.log("Theme > Chargement du thème clair");
    }
};

function swichURL() {
    let URL = document.location.href;
    if (night) {
        URL = URL.replace("&theme=night", "");
        URL = URL.replace("?theme=night", "");
        URL = URL.replace("&theme=", "");
        URL = URL.replace("?theme=", "");
    } else {
        URL = URL.replace("&theme=", "");
        if (!URL.includes("?")) {
            URL += "?theme=night";
        } else {
            URL += "&theme=night";
        }
    }
    document.location.href = URL;
}

//Port Reader

var portContent = "";
var found = false;

function readLoop() {
    if (found) {
        console.log("PortReader > Fin des détections sur port");
        toggleLoadingScreen(false);
        return;
    }
    sendPortValue(portContent);
    setTimeout(() => {
        readLoop();
    }, 1000);
}

function readPort() {
    found = false;
    portContent = "";
    sendPortValue("");
    setTimeout(() => {
        readLoop();
    }, 1000);
}

function cancelLoading() {
    found = true;
    toggleLoadingScreen(false);
    console.log("LoadingScreen > Arrêt manuel du verouillage");
}

function sendPortValue(value) {
    let http = new XMLHttpRequest();
    http.open('POST', 'request/portreading.php', true);
    http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    let sended = false;
    http.onreadystatechange = function() {
        if (http.responseText.includes("ERROR") && !sended) {
            console.log("PortReader > Impossible d'accéder au port");
            sended = true;
        } else if (http.responseText.includes("UNDETECTED") && !sended) {
            sended = true;
            console.log("PortReader > Aucune nouvelle entrée détectée");
        } else if (http.responseText.includes("SUCCESS") && !sended) {
            sended = true;
            var difference = "";
            let l = http.responseText.split(';')[1];
            for (let i = portContent.length; i < l.length; i++) {
                difference += l[i - 1];
            }
            console.log("PortReader > Nouvelle entrée sur le port: " + difference);
            if (difference.includes("46")) {
                console.log("PortReader > " + difference + " est l'argumement attendu !");
                found = true;
            } else {
                console.log("PortReader > " + difference + " n'est pas l'argumement attendu !");
                portContent = l;
            }
        } else if (!sended && http.responseText != "") {
            sended = true;
            portContent = http.responseText;
            console.log("PortReader > Contenu du port: " + portContent);
        }
    }
    http.send("value=" + value);
}