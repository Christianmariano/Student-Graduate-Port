<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $second_year_student_id = mysqli_real_escape_string($link, $_POST['second_year_student_id']);
    $second_year_student_name = mysqli_real_escape_string($link, $_POST['second_year_student_name']);

    // Update query
    $query = "UPDATE second_year_education_first_sem_student_record_school_year_2028 SET 
              second_year_student_id = '$second_year_student_id', 
              second_year_student_name = '$second_year_student_name'
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_second_year_student_grade_record_school_year_2028.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
