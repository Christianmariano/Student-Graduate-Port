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
    $student_id= mysqli_real_escape_string($link, trim($_POST['student_id']));
    $fullname = mysqli_real_escape_string($link, trim($_POST['fullname']));
    $year_level = mysqli_real_escape_string($link, trim($_POST['year_level']));
    $major = mysqli_real_escape_string($link, trim($_POST['major']));

        // Insert data into the database
        $sql = "INSERT INTO education_student_activity_attendance_school_year_2026 (student_id, fullname, year_level, major) 
                VALUES ('$student_id', '$fullname', '$year_level', '$major')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_education_student_activity_attendace_school_year_2026.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);

?>