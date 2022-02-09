<?php 
    include_once "header.php";
?>

<section class="forms">
    <h2 class="primaryTitle">Login</h2> 
    <?php
        $errorMsg = "";
        if (isset($_GET["error"])) {
            // Handle the error message
            echo $_GET["error"];
        }
    ?>
    <form action="includes/login.inc.php" method="post">
        <input class="textInput" type="text" name="username" placeholder="Username..." required autofocus>
        <input class="textInput" type="password" name="pass" placeholder="Password..." required>
        <input type="checkbox" name="remember" id="rememberMe" value="1" >  
        <label for="rememberMe" id="rememberMeText">Remember me</label>
        <p id="noAccountMessage"> 
            Don't have an account? Sign up <a href="/signup.php">here</a>!
        </p>
        <button type="submit" name="submit" id="signupButton">Submit</button>
    </form>
</section>

<?php 
    include_once "footer.php";
?>
