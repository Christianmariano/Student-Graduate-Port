<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $second_year_student_id_second_sem = mysqli_real_escape_string($link, $_POST['second_year_student_id_second_sem']);
    $second_year_student_name_second_sem = mysqli_real_escape_string($link, $_POST['second_year_student_name_second_sem']);

    // Update query
    $query = "UPDATE second_year_education_second_sem_student_record_school_year_2029 SET 
              second_year_student_id_second_sem = '$second_year_student_id_second_sem', 
              second_year_student_name_second_sem = '$second_year_student_name_second_sem'
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_second_year_student_second_sem_grade_record_school_year_2029.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
