<?php

$UP=shell_exec("mysql -u root -ptoor -e STATUS | grep Uptime | sed 's/Uptime/Mysql\ uptime/'");

echo "$UP";
?>

