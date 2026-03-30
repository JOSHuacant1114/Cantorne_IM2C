<?php
    session_start();
?>
<!DOCTYPE html>
<html>
    <head> 
        <title></title>
         <link href="views/res/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class = "navbar" >
            <ul class="left-link">
                <a href="timeline.php" class="logo">
                    <li>&nbsp;</li>
                </a>
                <a href="timeline.php">
                    <li>Socmed</li>
                </a>
            </ul>
            <?php
                if(isset($_SESSION['aid'])){
            ?>
            <ul class="right-link">
                <a href="profile.php">
                    <li><?=$_SESSION['firstname']." ".$_SESSION['lastname'];?></li>
                </a>
                <a href="models/logout_account.php">
                    <li>Logout</li>
                </a>
            </ul>
                <?php } else{ ?>
            <ul class="right-link">
                <a href="login.php">
                    <li>Login</li>
                </a>
                <a href="index.php">
                    <li>Signup</li>
                </a>
            </ul>
                <?php } ?>
        </div>
    </body>
</html>