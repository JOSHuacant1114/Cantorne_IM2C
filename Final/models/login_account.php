<?php
session_start();
include '../db/dbconnect.php';

$email = htmlspecialchars($_POST['email']);
$pass = htmlspecialchars($_POST['password']);

$mysql = "SELECT * FROM account WHERE email='$email' AND password='$pass'";

$result=$con->query($mysql);

if(mysqli_num_rows($result)==1){
    $row=mysqli_fetch_assoc($result);
    
    $_SESSION['aid']=$row['aid'];
    $_SESSION['firstname']=$row['firstname'];
    $_SESSION['lastname']=$row['lastname'];
    $_SESSION['email']=$row['email'];
    
    header('location:../profile.php');
            
}
else{
    header('location:../login.php?err=1');
}