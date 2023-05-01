<?php
    $tiroir = $_POST['tiroir'];
    $colonne = $_POST['index'];
    $port = fopen('/dev/ttyUSB1', 'w');
    if (!$port) {
        echo('ERROR');
        return;
    }

    $arg1 = str_replace('tiroir0', '', $tiroir);
    $arg1 = str_replace('tiroir', '', $arg1);

    $arg2 = substr($colonne, 0, 3);
    $arg2 = str_replace('-', '', $arg2);
    $arg2 = str_replace('C0', '', $arg2);
    $arg2 = str_replace('C', '', $arg2);

    $arg3 = substr($colonne, -3);
    $arg3 = str_replace('L0', '', $arg3);

    $token = "!$arg1;$arg2;$arg3?";

    echo("$token");
    for ($i = 0; $i < strlen($token); $i++) {
        fwrite($port, $token[$i]."");
    }
    fclose($port);
    echo("SUCCESS");
?>