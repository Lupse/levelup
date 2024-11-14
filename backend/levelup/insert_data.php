<?php
include('dbconnect.php');
$con = dbconnection();

function checkUsernameEmail($con, $field, $value)
{
    $query = "SELECT * FROM `user` WHERE `$field` = '$value'";
    $result = mysqli_query($con, $query);
    return mysqli_num_rows($result) > 0;
}

//variable
$username = $_POST["username"] ?? null;
$email = $_POST["email"] ?? null;
$conPassword = $_POST["conPassword"] ?? null;

//error handling
if (checkUsernameEmail($con, 'username', $username)) {
    echo json_encode(["success" => "false", "error" => "Username already exist!"]);
    return;
}

if (checkUsernameEmail($con, 'email', $email)) {
    echo json_encode(["success" => "false", "error" => "Email already exist!"]);
    return;
}

$query = "INSERT INTO `user` (`username`, `email`, `password`) VALUES ('$username', '$email', '$conPassword')";
$execute = mysqli_query($con, $query);

$arr = [];
if ($execute) {
    $arr["success"] = "true";
} else {
    $arr["success"] = "false";
    $arr["error"] = "An error occured!";
}

print(json_encode($arr));

mysqli_close($con);
