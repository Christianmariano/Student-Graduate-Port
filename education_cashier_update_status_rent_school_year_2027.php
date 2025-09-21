<?php
// Database connection
$servername = "sql105.infinityfree.com";
$username = "if0_37740098";
$password = "5oAh2dTDTzZBcT";
$dbname = "if0_37740098_graduate_portal";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
$rent_status = isset($_POST['rent_status']) ? trim($_POST['rent_status']) : '';

// Validate input
if (!empty($id) && in_array($rent_status, ['Receive', 'Return', ''])) {
    // Prepare and execute the query to fetch the current status
    $check_sql = "SELECT rent_status FROM education_student_record_school_year_2027 WHERE id = ?";
    $stmt = $conn->prepare($check_sql);

    if ($stmt) {
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $stmt->bind_result($current_status);
        $stmt->fetch();
        $stmt->close();

        // Check if the current status is already "Submit"
        if ($current_status == 'Submit') {
            echo "<script>
                    alert('Status is already \'Submit\'. Update not allowed.');
                  </script>";
        } else {
            // Prepare and execute the update query
            $update_sql = "UPDATE education_student_record_school_year_2027 SET rent_status = ? WHERE id = ?";
            $stmt = $conn->prepare($update_sql);

            if ($stmt) {
                // If rent_status is empty, it will be updated to NULL (or you can set a default value instead of '')
                $rent_status = ($rent_status === '') ? NULL : $rent_status;
                $stmt->bind_param("si", $rent_status, $id);
                $stmt->execute();

                // Check if any row was updated
                if ($stmt->affected_rows > 0) {  
                    echo "<script>
                            alert('Status updated successfully.');
                          </script>";
                    header("Location: admin_education_department_record_borrow_toga_school_year_2027.php"); // Adjust to your main page
                } else {
                    echo "<script>
                            alert('Rent Status did not change.');
                          </script>";
                    header("Location: admin_education_department_record_borrow_toga_school_year_2027.php"); // Adjust to your main page
                }

                $stmt->close();
            } else {
                echo "<script>
                        alert('Error preparing statement: " . $conn->error . "');
                      </script>";
            }
        }
    } else {
        echo "<script>
                alert('Error preparing statement: " . $conn->error . "');
              </script>";
    }
} else {
    echo "<script>
            alert('Invalid input. Please check the data and try again.');
          </script>";
}

$conn->close();
?>
