<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection details
    $servername = "sql105.infinityfree.com";
    $username = "if0_37740098";
    $password = "5oAh2dTDTzZBcT";
    $dbname = "if0_37740098_graduate_portal";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Collect and sanitize form data
    $username = $conn->real_escape_string($_POST['username']);
    $password = $conn->real_escape_string($_POST['password']);

    // Check if student_id exists
    $check_sql = "SELECT * FROM admin WHERE username = '$username'";
    $check_result = $conn->query($check_sql);

    if ($check_result->num_rows > 0) {
        // Hash the new password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Update the password in the database
        $update_sql = "UPDATE admin SET password = '$hashed_password' WHERE username = '$username'";
        if ($conn->query($update_sql) === TRUE) {
            echo '<script>alert("Password reset successfully.");</script>';
            echo '<script>window.location.href = "admin_education_change_password.php";</script>';
        } else {
            echo "Error updating record: " . $conn->error;
        }
    } else {
        echo '<script>alert("Invalid Username.");</script>';
        echo '<script>window.location.href = "admin_education_change_password.php";</script>';
    }

    // Close connection
    $conn->close();
}
?>