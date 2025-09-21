<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $student_id = mysqli_real_escape_string($link, $_POST['student_id']);
    $student_name = mysqli_real_escape_string($link, $_POST['student_name']);

    // Update query
    $query = "UPDATE education_student_record_school_year_2029 SET 
              student_id = '$student_id', 
              student_name = '$student_name'
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_thesis_school_year_2029.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
