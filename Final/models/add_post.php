<?php 
session_start();
include '../db/dbconnect.php';

$post = htmlspecialchars_decode($_POST['post-area']);
$aid = htmlspecialchars_decode($_SESSION['aid']);

$mysql = "INSERT INTO post VALUES (0, $aid,'$post', NOW(), NOW())";

if($con->query($mysql) === TRUE){
    echo "Post Succesfull";
    header("location../profile.php");
}
else{
    echo "Error message:".$sql. " " .$con->error;
}
