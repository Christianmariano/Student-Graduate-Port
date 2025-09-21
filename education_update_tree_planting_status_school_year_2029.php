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
    $tree_planting_status = filter_input(INPUT_POST, 'tree_planting_status', FILTER_SANITIZE_STRING);

    // Ensure the id and graduation_fee_status are not empty
    if ($id && $tree_planting_status) {
        // Prepare an SQL statement for updating payment status
        $sql = 'UPDATE education_student_record_school_year_2029 SET tree_planting_status = :tree_planting_status WHERE id = :id';
        $stmt = $pdo->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':tree_planting_status', $tree_planting_status, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            // Redirect or display a success message
            echo 'tree planting status updated successfully.';
            header("Location: admin_education_record_tree_planting_school_year_2029.php"); // Adjust to your main page
        } else {
            echo 'Failed to update tree planting status.';
        }
    } else {
        echo 'Invalid input data.';
    }
} else {
    echo 'Invalid request method.';
}
?>
