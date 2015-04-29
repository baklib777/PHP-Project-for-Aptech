<?php
$hostname="localhost"; //local server name default localhost
$username="root";  //mysql username default is root
$password="";       //blank if no password is set for mysql
$database="hotel";  //database name 
$con=mysqli_connect($hostname,$username,$password,$database);
if(! $con)
{
        die('Connection Failed'.mysqli_error());
}

?>
