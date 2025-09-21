<?php
include 'config.php';
session_start();

// Check if the user is logged in; if not, redirect them to the login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: adminlogin.php");
    exit;
}

// Get the logged-in username from the session
$username = $_SESSION["username"];

// Fetch user details from the database
$sql = "SELECT * FROM admin WHERE username = ?";
$stmt = $link->prepare($sql);

if ($stmt === false) {
    die("Prepare failed: " . $link->error);
}

$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
$stmt->close();

// Process profile update
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = isset($_POST['fullname']) ? $_POST['fullname'] : $user['fullname'];
    $gmail = isset($_POST['gmail']) ? $_POST['gmail'] : $user['gmail'];
    $phone = isset($_POST['phone']) ? $_POST['phone'] : $user['phone'];
    $oldPhotoPath = $user['photo'];
    $photoPath = '';

    if (isset($_FILES['photo']) && $_FILES['photo']['error'] == 0) {
        $photo = $_FILES['photo'];
        $photoPath = 'uploads_admin_image/' . basename($photo['name']);

        // Delete old photo if it exists
        if (!empty($oldPhotoPath) && file_exists($oldPhotoPath)) {
            unlink($oldPhotoPath);
        }

        if (!move_uploaded_file($photo['tmp_name'], $photoPath)) {
            echo "<script>alert('Error uploading photo.');</script>";
            $photoPath = ''; // Reset photo path if upload fails
        }
    } else {
        // If no new photo is uploaded, use the old photo path
        $photoPath = $oldPhotoPath;
    }

    if ($photoPath) {
        // Update profile with photo
        $sql = "UPDATE admin SET fullname = ?, gmail = ?, phone = ?, photo = ? WHERE username = ?";
        $stmt = $link->prepare($sql);

        if ($stmt === false) {
            die("Prepare failed: " . $link->error);
        }

        $stmt->bind_param("sssss", $fullname, $gmail, $phone, $photoPath, $username);
    } else {
        // Update profile without photo
        $sql = "UPDATE admin SET fullname = ?, gmail = ?, phone = ? WHERE username = ?";
        $stmt = $link->prepare($sql);

        if ($stmt === false) {
            die("Prepare failed: " . $link->error);
        }

        $stmt->bind_param("ssss", $fullname, $gmail, $phone, $username);
    }

    if ($stmt->execute()) {
        echo "<script>alert('Profile updated successfully.');</script>";
        echo '<script>window.location.href = "admin_cashier_user_profile_general_info.php";</script>';
    } else {
        echo "<script>alert('Error updating profile.');</script>";
    }

    $stmt->close();
}

// Close the connection
$link->close();
?>
