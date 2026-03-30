<?php include 'views/header.php'; ?>
<div class="container">
    <div class="cantorne"> 
        <div class="pro-pic">
            
        </div>
        <div class="name">
            <?= $_SESSION['firstname']." ".$_SESSION['lastname'];?>
        </div>
    </div>
    <div class="post-container">
        <form id="post-form" action="models/add_post.php" method="post">
            <textarea id="post-area" name="post-area" placeholder="What's on your mind"></textarea>
            <input type="submit" id="post-button" value="post">
        </form>
    </div>
    <div>
        <?php
        include 'models/load_userpost.php';
        ?>
    </div>
</div>
<?php include 'views/footer.php';