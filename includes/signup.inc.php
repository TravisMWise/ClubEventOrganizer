<?php

// Check if the user got to this "page" in the correct way
if (!isset($_POST["submit"])) {
    // Only here if they didn't get here through the submit button
    // so return them to the signup page
    header("location: ../signup.php");
    exit(); // Stop this program from running
}

// Here if the user got here the correct way
// Process the user information
$username = $_POST["username"];
$pass = $_POST["pass"];
$confirmPass = $_POST["confirmPass"];

// Output the values for error checking
echo 
    "<p>Username: " . $username . 
    "</p><p>Password: " . $pass .
    "</p><p>Confirm Password: " . $confirmPass . "</p>";

include_once "../config/config.inc.php";

/**
 * TODO:
 *  Do security checks.
 *  Make sure the info is valid.
 *  Make sure the password matches the confirmPassword.
 *  Error handling.
 *  Use prepared statements.
 *  Encrypt the password before storing in the database.
 */


// Insert the new user into the database
$mysqli->query("INSERT INTO Students(username, email_name, email_domain, pass) VALUES ('$username', '', '', '$pass')");

// Redirect the user to the welcome page after we have 
// successfully added them to the database
header("location: ../welcome.php?username=$username");
exit(); // End this script