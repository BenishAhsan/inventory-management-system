<?php
$servername = "localhost"; // Server name (default for local development)
$username = "root";        // Database username (default for XAMPP/WAMP)
$password = "";            // Database password (default is empty)
$dbname = "customer_project"; // Replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
