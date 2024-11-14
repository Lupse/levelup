<?php
function dbconnection()
{
    $con = mysqli_connect('localhost', 'root', '', 'levelupdb');
    return $con;
}
