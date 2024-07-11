<?php
include 'db_connection.php';

$response = 'Test';

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
        $response = "New record created successfully";
        http_response_code(200);
    } else {
        $response = "Error: " . $stmt->error;
        http_response_code(500);
    }

    $stmt->close();
    $conn->close();
} else {
    http_response_code(405); // Method Not Allowed
    $response = "Invalid request method";
}

header('Content-Type: application/json');
echo json_encode(['message' => $response]);
?>
