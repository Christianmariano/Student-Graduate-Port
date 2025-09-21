<?php
// Database connection settings
$host = 'sql105.infinityfree.com';
$dbname = 'if0_37740098_graduate_portal';
$user = 'if0_37740098';
$pass = '5oAh2dTDTzZBcT';

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
    $christmass_party = filter_input(INPUT_POST, 'christmass_party', FILTER_SANITIZE_STRING);

    // Ensure the id and ojt_status are not empty
    if ($id && $christmass_party) {
        // Prepare an SQL statement for updating ojt status
        $sql = 'UPDATE education_student_activity_attendance_school_year_2027 SET christmass_party = :christmass_party WHERE id = :id';
        $stmt = $pdo->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':christmass_party', $christmass_party, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            // Redirect or display a success message
            echo 'OJT status updated successfully.';
            header("Location: admin_education_student_activity_attendace_school_year_2027.php"); // Adjust to your main page
        } else {
            echo 'Failed to update status.';
        }
    } else {
        echo 'Invalid input data.';
    }
} else {
    echo 'Invalid request method.';
}
?>
