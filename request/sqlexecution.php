<?php
    $tiroir = $_POST['tiroir'];
    $demande = $_POST['demande'];
    $colonne = $_POST['index'];

    $conn = mysqli_connect("localhost", "tiroclass", "", "tiroclass2023");
    
    $result = $conn->query("select QUANTITY from $tiroir where id='$colonne'");

    $current = "";
    $i = $result->num_rows;
    while($row = $result->fetch_assoc()) {
        $current = $row['QUANTITY'];
    }
    $current = $current + $demande;
    if ($current < 0) {
        echo("ERROR");
    } else {
        echo("SUCCESS;$current");
        $conn->query("update $tiroir set QUANTITY=$current where `$tiroir`.`id`='$colonne'");
    }

    mysql_close($conn);
?>