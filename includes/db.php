<?php
$host = "localhost";
$dbname = "cloud_storage";
$username = "root";
$password = "root";  // Zadej heslo, pokud ho MySQL používá

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Chyba připojení: " . $e->getMessage());
}
?>
