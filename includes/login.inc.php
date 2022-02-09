<?php


// Check if we got here through the submit button
// on the login form
if (isset($_POST["submit"])) {

    // Get the information that was posted
    $username = $_POST["username"];
    $pass = $_POST["pass"];
    $rem = false;
    // Check if the remember me box is checked
    if (isset($_POST["remember"])) {
        $rem = true;
    }

    include_once "../config/config.inc.php";

    // Check if the username exists in the database
    $smt = $mysqli->query(
        "SELECT * FROM Students WHERE username = '$username' AND pass = '$pass'"
    );
    $result = mysqli_fetch_assoc($smt);

    // header('Content-Type: text/plain');

    if ($result) {
        // Start the session
        // and set the user for the session
        session_start();
        $_SESSION["uid"] = $result["uid"];
        $_SESSION["username"] = $result["username"];
        // $_SESSION["pass"] = $result["pass"];
        // $_SESSION["created_at"] = $result["created_at"];
        // $_SESSION["email_name"] = $result["email_name"];
        // $_SESSION["email_domain"] = $result["email_domain"];
        
        // Go to the account page of the user
        header("location: ../index.php");
        exit();
    }
    else {
        // Only here if the username/pass combo doesn't exist 
        // Return the user to the login page
        header("location: ../login.php");
        exit();
    }

    
}
else {
    // We didn't get here through submitting a login request so
    // go back to the login page
    header("location: ../login.php");
    exit();
}