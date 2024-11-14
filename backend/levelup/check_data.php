<?php
include("dbconnect.php");
$con = dbconnection();

function checkUsernamePassword($con, $field, $value)
{
    $query = "SELECT * FROM `user` WHERE `$field` = '$value'";
    $result = mysqli_query($con, $query);
    return mysqli_num_rows($result) > 0;
}

$username = $_POST["username"] ?? null;
$password = $_POST["password"] ?? null;

//error handling
if (!checkUsernamePassword($con, 'username', $username)) {
    echo json_encode(['success' => 'false', 'error' => "Incorrect username!"]);
    return;
}

if (!checkUsernamePassword($con, 'password', $password)) {
    echo json_encode(['success' => 'false', 'error' => "Incorrect password!"]);
    return;
}

$query = "SELECT * FROM `user` WHERE `username` = '$username' AND `password` = '$password'";
$execute = mysqli_query($con, $query);

$arr = [];
if ($execute) {
    $arr['success'] = 'true';
} else {
    $arr['success'] = 'false';
    $arr['error'] = 'An error occured!';
}

print(json_encode($arr));

mysqli_close($con);
