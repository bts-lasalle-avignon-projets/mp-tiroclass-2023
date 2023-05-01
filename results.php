<?php
    $conn = mysqli_connect("localhost", "tiroclass", "");
    $conn->query("USE tiroclass2023");
    $filter = $_GET['filter'];
    $search = $_GET['search'];
    $quantity = $_GET['quantity'];

/*------------------------------
        QUERY BUILDER
------------------------------*/

    //Initialisation variables
    $hassuffix = 0;
    $suffix = "";
    //Preparation de la requête pour 'filter'
    $array = prepareRequest($filter, "type='".$filter."'", $suffix, $hassuffix);
    //Mise à jour des variables
    $suffix = $array[0];
    $hassuffix = $array[1];
    //Preparation de la requête pour 'search'
    $array = prepareRequest($search, "tags LIKE '%".$search."%'", $suffix, $hassuffix);
    //Mise à jour des variables
    $suffix = $array[0];
    $hassuffix = $array[1];
    //Preparation de la requête pour 'quantity'
    $array = prepareRequest($quantity, "quantity>='".$quantity."'", $suffix, $hassuffix);
    //Mise à jour des variables
    $suffix = $array[0];
    $hassuffix = $array[1];

    $total = 0;

    //Fonction de préparation de requête
    function prepareRequest($value, $request, $suffix, $hassuffix) {
        if ($value != "") {                                             //Si la valeur d'entrée est initalisée
            if ($hassuffix == 0) {                                      //Si aucun paramètre n'a précédemment été précisé
                $suffix = $suffix."WHERE ";                             //Ajouter WHERE pour commencer à préciser un paramètre
            } else {                                                    //Si la requête a deja un paramètre de précisé
                $suffix = $suffix." AND ";                              //Ajouter AND pour ajouter un autre paramètre à la recherche
            }
            $suffix = $suffix.$request;                                 //Ajouter le format SQL de la recherche
            $hassuffix = 1;                                             //Indiquer que la recherche possède au moins un paramètre
        }
        return array($suffix, $hassuffix);                              //Renvoyer les variables à mettre à jour 
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>TiroClass - Résultats</title>
        <link rel="stylesheet" href="style/style.css">
        <script src='temp.js'></script>
    </head>
    <body>
        <h1>Nouvelle Recherche</h1>
        
        
        <?php
        include("loading.php");
        include("search.php");
        
        $tabres[] = [0, 0, 0, 0, 0, 0, 0, 0, 0];            //Résultats par tiroir

        echo("<div id=\"request_box\" style=\"display: none;\" class=\"request_box-sun\">");

        for ($i = 1; $i < 10; $i++) {                       //Pour chaque tiroir (ce sont des tables différentes)
            echo "<p>SELECT id,type,name,quantity FROM tiroir0$i $suffix</p>";
        }
        echo("</div><br><button id=\"request_button\" onclick=\"toggleSee()\" style=\"background-color: #bbbbbb\">Afficher les requêtes</button>");
        for ($i = 1; $i < 10; $i++) {                       //Pour chaque tiroir (ce sont des tables différentes)

            $result = $conn->query("SELECT id,type,name,quantity FROM tiroir0$i $suffix");
            $total += $result->num_rows;                    //Compte le nombre d'occurence totale pour la recherche dans la base de donnée
            $tabres[$i-1] = $result->num_rows;              //Indique le nombre de résultats par titoir afin de construire un tableau de résultat par tiroir


            //Constructeur de tableaux de résultats
            if($tabres[$i-1] == 0) {
                continue;
            }
            else {
                $search_quantity = 0;
                if ($quantity != "") {
                    $search_quantity = $quantity;
                }
                echo "<h2>Tiroir ".$i."</h2>\n";
                echo "<table class=\"result_table\"><tr><td>Compartiment</td>\n<td>Type</td>\n<td>Description</td>\n<td>Disponible</td>\n<td>Demande</td>\n<td>Localiser</td>\n";
                while($row = $result->fetch_assoc()) {
                    $uuid = $row['id'].";tiroir0$i";
                    echo "<tr><td>".$row['id']."</td>\n<td>".$row['type']."</td>\n<td>".$row['name']."</td>\n<td id=\"$uuid-number\">".$row['quantity']."</td>\n<td id=\"edit\"><input id=\"$uuid-quantity\" type=\"number\" min=\"0\" max=\"".$row['quantity']."\" size=\"2\" value=\"$search_quantity\"><button class=\"$uuid\" onclick=\"execute(this.className, true)\">Ajouter</button>\n<button class=\"$uuid\" style=\"background-color: #a41f1f\" onclick=\"execute(this.className, false)\">Enlever</button>\n</td>\n<td><button class=\"$uuid\" style=\"background-color: #bbbbbb;margin-left:15px;\" onclick=\"serialWrite(this.className)\">Localiser</button>\n</td>\n</tr>\n";                    
                }
                echo "</table>\n";
            }
                
        }
        
        
        echo "<br><h3>Nombre de résultats: $total</h3>\n<br>";
        mysql_close($conn);
        ?>
    </body>
</html>

