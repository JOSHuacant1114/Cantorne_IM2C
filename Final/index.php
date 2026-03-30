    <?php include 'views/header.php'; ?>
    <div class="input-form">
        <p class="title">SIGNUP</p>
        <form action="models/signup_account.php" method="POST">
            <label for="email"> Email</label>
                <input type="email" id="email" name="email" placeholder="Naruto@gmail.com">
            <label for="firstname"> First Name</label>
                <input type="text" id="firstname" name="firstname" placeholder="Naruto">
            <label for="lastname"> Last Name</label>
                <input type="text" id="lastname" name="lastname" placeholder="Uzumaki">
            <label for="password"> Password</label>
                <input type="password" id="password" name="password" placeholder="*********">
            <label for="cpassword"> Confirm Password</label>
                <input type="password" id="cpassword" name="cpassword" placeholder="*********">
                <input type="submit" value="Signup">   
            </form>
        </div>
        <?php include 'views/footer.php';
        