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
    $third_year_student_id_second_sem = mysqli_real_escape_string($link, trim($_POST['third_year_student_id_second_sem']));
    $third_year_student_name_second_sem = mysqli_real_escape_string($link, trim($_POST['third_year_student_name_second_sem']));

    // Check if student_id already exists
    $check_sql = "SELECT third_year_student_id_second_sem FROM third_year_education_second_sem_student_record_school_year_2025 WHERE third_year_student_id_second_sem = '$third_year_student_id_second_sem'";
    $check_result = mysqli_query($link, $check_sql);

    if (mysqli_num_rows($check_result) > 0) {
        // If student_id exists, show alert and do not proceed with registration
        echo '<script>alert("Student ID already exists. Please use a different Student ID.");</script>';
        echo '<script>window.location.href = "admin_education_third_year_student_second_sem_grade_record_school_year_2025.php";</script>';
    } else {
        // Insert data into the database
        $sql = "INSERT INTO third_year_education_second_sem_student_record_school_year_2025 (third_year_student_id_second_sem, third_year_student_name_second_sem) 
                VALUES ('$third_year_student_id_second_sem', '$third_year_student_name_second_sem')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_education_third_year_student_second_sem_grade_record_school_year_2025.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);
}
?>
