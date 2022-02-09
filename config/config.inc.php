<?php

// Set the server, login info, and database name
$db_server = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'ceo_db';

// Check for errors
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Connect to the database
$mysqli = new mysqli(
    $db_server,
    $db_username,
    $db_password,
    $db_name 
);

// Check if we connected succesfully
if ($mysqli == false) {
    die("Error: Could not connect" . 
    mysqli_connect_error());
}


