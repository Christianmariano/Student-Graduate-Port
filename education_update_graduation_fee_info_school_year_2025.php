<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $student_id = mysqli_real_escape_string($link, $_POST['student_id']);
    $student_name = mysqli_real_escape_string($link, $_POST['student_name']);
    $graduation_fee = mysqli_real_escape_string($link, $_POST['graduation_fee']);
    $amount_paid = mysqli_real_escape_string($link, $_POST['amount_paid']);

    // Update query
    $query = "UPDATE education_student_record_school_year_2025 SET 
              student_id = '$student_id', 
              student_name = '$student_name', 
              graduation_fee = '$graduation_fee',
              amount_paid = '$amount_paid' 
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_cashier_education_department_graduation_fee_school_year_2025.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>