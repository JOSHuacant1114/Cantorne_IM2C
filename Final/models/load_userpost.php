<?php
include 'db/dbconnect.php';
$aid = $_SESSION['aid'];
$sql = "SElECT * FROM post WHERE aid = $aid";

$result=$con->query($sql);

while($row= mysqli_fetch_assoc($result)){
    echo "<div class=\"post-block\">";
    echo $row['post_text'];
    echo"</div>";
}