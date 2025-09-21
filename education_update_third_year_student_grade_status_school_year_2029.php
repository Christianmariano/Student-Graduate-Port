<?php
// Database connection settings
$host = 'localhost';
$dbname = 'graduate_portal';
$user = 'root';
$pass = '';

// Create a new PDO instance
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('Database connection failed: ' . $e->getMessage());
}

// Check if form data is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize and validate input data
    $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
    $third_year_student_grade_first_sem_status = filter_input(INPUT_POST, 'third_year_student_grade_first_sem_status', FILTER_SANITIZE_STRING);

    // Ensure the id and ojt_status are not empty
    if ($id && $third_year_student_grade_first_sem_status) {
        // Prepare an SQL statement for updating ojt status
        $sql = 'UPDATE third_year_education_first_sem_student_record_school_year_2029 SET third_year_student_grade_first_sem_status = :third_year_student_grade_first_sem_status WHERE id = :id';
        $stmt = $pdo->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':third_year_student_grade_first_sem_status', $third_year_student_grade_first_sem_status, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            // Redirect or display a success message
            echo 'First Year Student Grade Status updated successfully.';
            header("Location: admin_education_third_year_student_grade_year_2029.php"); // Adjust to your main page
        } else {
            echo 'Failed to update first year student grade status.';
        }
    } else {
        echo 'Invalid input data.';
    }
} else {
    echo 'Invalid request method.';
}
?>
