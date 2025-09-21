<?php
// Initialize the session and include database configuration
require 'config.php';
session_start();

// Check if the user is logged in, if not then redirect them to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: index.php");
    exit;
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect and sanitize input data
    $year = mysqli_real_escape_string($link, trim($_POST['year']));
    $student_name = mysqli_real_escape_string($link, trim($_POST['student_name']));
    $section = mysqli_real_escape_string($link, trim($_POST['section']));

    // Check if student_name already exists
    $check_sql = "SELECT student_name FROM scire_2028  WHERE student_name = '$student_name'";
    $check_result = mysqli_query($link, $check_sql);

    if (mysqli_num_rows($check_result) > 0) {
        // If student_id exists, show alert and do not proceed with registration
        echo '<script>alert("Student ID already exists. Please use a different Student ID.");</script>';
        echo '<script>window.location.href = "admin_scire_year_2028.php";</script>';
    } else {
        // Insert data into the database
        $sql = "INSERT INTO scire_2028 (year, student_name, section) 
                VALUES ('$year', '$student_name', '$section')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_scire_year_2028.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);
}
?>