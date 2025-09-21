<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
define('DB_SERVER', 'sql105.infinityfree.com');
define('DB_USERNAME', 'if0_37740098');
define('DB_PASSWORD', '5oAh2dTDTzZBcT');
define('DB_NAME', 'if0_37740098_graduate_portal');

/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>