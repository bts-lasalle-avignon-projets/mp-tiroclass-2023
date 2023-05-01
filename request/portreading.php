<?php
    $value = $_POST['value'];
    $port = fopen('/dev/ttyUSB1', 'r');
    if (!$port) {
        echo('ERROR');
        return;
    }
    $content = fread($port, filesize('/dev/ttyUSB0'));
    if ($value == "") {
        echo($content);
    } else {
        $next = str_replace("$value","", "$content");
        if ($next != "") {
            echo("SUCCESS;$next");
        } else {
            echo("UNDETECTED");
        }
    }
    fclose($port);
?>