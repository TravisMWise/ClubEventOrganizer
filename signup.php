<?php 
    include_once "header.php";
?>

<!-- Sign up form -->
<section class="forms">
    <h2 class="primaryTitle"> Sign Up</h2>
    <div class="formsDiv">
        
        <!-- Check for errors -->
        <?php
            $errorMsg = "";
            if (isset($_GET["error"])) {
                //handle the error
                echo $_GET["error"];
            }
        ?>

        <!-- Setup the form for signup -->
        <form action="includes/signup.inc.php" method="post">
            <input class="textInput" type="text" name="username" placeholder="Username..." required autofocus>
            <input class="textInput" type="password" name="pass" placeholder="Password..." required>
            <input class="textInput" type="password" name="confirmPass" placeholder="Confirm Password..." required>
            <button type="submit" name="submit" id="signupButton">Submit</button>
        </form>
    </div>
</section>


<?php 
    include_once "footer.php";
?>