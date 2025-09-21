<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $student_id = mysqli_real_escape_string($link, $_POST['student_id']);
    $student_name = mysqli_real_escape_string($link, $_POST['student_name']);
    $date_time_borrow = mysqli_real_escape_string($link, $_POST['date_time_borrow']);
    $date_time_return = mysqli_real_escape_string($link, $_POST['date_time_return']);

    // Build the update query conditionally
    $updateFields = [];

    // Check if each field is provided and add to the update fields
    if (!empty($student_id)) {
        // Add criteria for updating student_id (for example, only if it differs from current value)
        $currentStudentIdQuery = "SELECT student_id FROM education_student_library_borrow_year_2030 WHERE id = '$id'";
        $result = mysqli_query($link, $currentStudentIdQuery);
        $currentStudentId = mysqli_fetch_assoc($result)['student_id'];

        if ($currentStudentId !== $student_id) {
            $updateFields[] = "student_id = '$student_id'";
        }
    }

    if (!empty($student_name)) {
        // Add criteria for updating student_name
        $currentStudentNameQuery = "SELECT student_name FROM education_student_library_borrow_year_2030 WHERE id = '$id'";
        $result = mysqli_query($link, $currentStudentNameQuery);
        $currentStudentName = mysqli_fetch_assoc($result)['student_name'];

        if ($currentStudentName !== $student_name) {
            $updateFields[] = "student_name = '$student_name'";
        }
    }

    if (!empty($date_time_return)) {
        $updateFields[] = "date_time_return = '$date_time_return'";
    }

    if (!empty($date_time_borrow)) {
        $updateFields[] = "date_time_borrow = '$date_time_borrow'";
    }

    // If there are no fields to update, handle it gracefully
    if (empty($updateFields)) {
        echo "No fields to update.";
        exit;
    }

    // Join the fields for the update query
    $updateString = implode(', ', $updateFields);

    // Complete the SQL update query
    $query = "UPDATE education_student_library_borrow_year_2030 SET $updateString WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_student_library_borrow_year_2024.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
