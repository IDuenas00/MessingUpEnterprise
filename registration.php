<?php
include 'db_connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fname = $_POST['F_Name'];
    $lname = $_POST['L_Name'];
    $email = $_POST['email'];
    $number = $_POST['number'];
    $password = $_POST['pwd'];

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    $stmt = $conn->prepare("INSERT INTO registration (F_Name, L_Name, Email, Number, Password) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $fname, $lname, $email, $number, $hashed_password);

    if ($stmt->execute() === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
