<?php

mysql_connect("localhost","root","toor");
    $array = explode(" ",mysql_stat());
    
    echo "mysql uptime<br /><br />";

    foreach ($array as value) {
        echo $value . "<br />";
    }
?>

