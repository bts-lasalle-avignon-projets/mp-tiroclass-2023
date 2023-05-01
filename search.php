<!DOCTYPE html>
<html>
    <head>
        <title>TiroClass</title>
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body id="body">
        <img src="img/sun.png" alt="" id="theme" onclick="toggleTheme(true)">
        <form action="results.php" method="GET">
            <label for="search">🔎 Recherche :</label>
            <?php
                echo "<input type=\"text\" name=\"search\" id=\"search\" size=\"42\" value=\"".$_GET['search']."\">";
            ?>            
            <br>
            <label for="filter">Filtre : </label>
            <?php
                echo "<select name=\"filter\" id=\"filter\" selected=\"".$_GET['filter'].".\">";
            ?>
                <option value="">TOUT AFFICHER</option>
                <option value="UNKNOWN">Inconnu</option>
                <option value="RESISTANCE">Résistance</option>
                <option value="SWITCH">Interrupteur</option>
                <option value="DEL">Led</option>
                <option value="MICROCONTROLLER">µControlleur</option>
                <option value="DIGITALDISPLAY">Afficheur Numérique</option>
                <option value="IR">Infra-Rouge</option>
                <option value="BUTTON">Bouton</option>
                <option value="PORT">Port</option>
                <option value="OTHER">Divers</option>
            </select>
            <label for="quantity">Quantit&eacute;</label>
            <input type="number" name="quantity" id="quantity" min="0">
            <?php
                echo("<input type=\"hidden\" name=\"theme\" id=\"theme\" value=\"".$_GET['theme']."\">");
            ?>
            <br>
            <input id="send" type="submit" value="Recherche">
        </form>
    </body>
</html>