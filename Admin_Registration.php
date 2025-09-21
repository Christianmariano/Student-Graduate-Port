<?php
/* Database credentials */
define('DB_SERVER', 'sql105.infinityfree.com');
define('DB_USERNAME', 'if0_37740098');
define('DB_PASSWORD', '5oAh2dTDTzZBcT');
define('DB_NAME', 'if0_37740098_graduate_portal');

/* Attempt to connect to MySQL database */
$mysqli = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection
if ($mysqli === false) {
    die("ERROR: Could not connect. " . $mysqli->connect_error);
}

// Define variables and initialize with empty values
$username = $fullname = $gmail = $phone = $password = $role = $photo = "";
$username_err = $fullname_err = $gmail_err = $phone_err = $password_err = $role_err = $photo_err = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate username
    if (empty(trim($_POST["username"]))) {
        $username_err = "Please enter a username.";
    } else {
        $username = trim($_POST["username"]);
    }

    // Validate fullname
    if (empty(trim($_POST["fullname"]))) {
        $fullname_err = "Please enter your fullname.";
    } else {
        $fullname = trim($_POST["fullname"]);
    }

    // Validate Gmail
    if (empty(trim($_POST["gmail"]))) {
        $gmail_err = "Please enter your Gmail address.";
    } else {
        $gmail = trim($_POST["gmail"]);
        if (!filter_var($gmail, FILTER_VALIDATE_EMAIL)) {
            $gmail_err = "Invalid Gmail format.";
        } else {
            // Check if Gmail already exists
            $sql = "SELECT id FROM admin WHERE gmail = ?";
            if ($stmt = $mysqli->prepare($sql)) {
                $stmt->bind_param("s", $gmail);
                if ($stmt->execute()) {
                    $stmt->store_result();
                    if ($stmt->num_rows > 0) {
                        $gmail_err = "This Gmail address is already registered.";
                    }
                } else {
                    echo "Something went wrong. Please try again later.";
                }
                $stmt->close();
            }
        }
    }

    // Validate phone
    if (empty(trim($_POST["phone"]))) {
        $phone_err = "Please enter your phone number.";
    } else {
        $phone = trim($_POST["phone"]);
        if (!preg_match("/^[0-9]{10,11}$/", $phone)) { // Simple phone number validation
            $phone_err = "Invalid phone number format. Enter 10 to 15 digits.";
        }
    }

    // Validate password
    if (empty(trim($_POST["password"]))) {
        $password_err = "Please enter a password.";
    } else {
        $password = trim($_POST["password"]);
    }

    // Validate role
    if (empty($_POST["role"])) {
        $role_err = "Please select a role.";
    } else {
        $role = $_POST["role"];
        
        // Check if the role already exists in the database
        $sql = "SELECT id FROM admin WHERE role = ?";
        if ($stmt = $mysqli->prepare($sql)) {
            $stmt->bind_param("s", $role);
            if ($stmt->execute()) {
                $stmt->store_result();
                if ($stmt->num_rows > 0) {
                    $role_err = "This role already exists.";
                }
            } else {
                echo "Something went wrong. Please try again later.";
            }
            $stmt->close();
        }
    }

    // Validate photo upload
    if (isset($_FILES["photo"]) && $_FILES["photo"]["error"] == 0) {
        $photo_name = $_FILES["photo"]["name"];
        $photo_tmp_name = $_FILES["photo"]["tmp_name"];
        $photo_size = $_FILES["photo"]["size"];
        $photo_error = $_FILES["photo"]["error"];
        $photo_ext = pathinfo($photo_name, PATHINFO_EXTENSION);

        // Allowed file types
        $allowed_ext = array("jpg", "jpeg", "png", "gif");

        if (!in_array($photo_ext, $allowed_ext)) {
            $photo_err = "Invalid photo format. Only JPG, JPEG, PNG, and GIF are allowed.";
        } elseif ($photo_size > 2000000) { // 2MB limit
            $photo_err = "Photo size should not exceed 2MB.";
        } else {
            $photo_new_name = uniqid('', true) . "." . $photo_ext;
            $photo_destination = "uploads_admin_image/" . $photo_new_name;

            if (!move_uploaded_file($photo_tmp_name, $photo_destination)) {
                $photo_err = "Failed to upload photo.";
            } else {
                $photo = $photo_destination;
            }
        }
    } else {
        $photo_err = "Please upload a photo.";
    }

    // Check input errors before inserting into database
    if (empty($username_err) && empty($fullname_err) && empty($gmail_err) && empty($phone_err) && empty($password_err) && empty($confirm_password_err) && empty($role_err) && empty($photo_err)) {
        // Prepare an insert statement
        $sql = "INSERT INTO admin (username, fullname, gmail, phone, password, role, photo) VALUES (?, ?, ?, ?, ?, ?, ?)";

        if ($stmt = $mysqli->prepare($sql)) {
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("sssssss", $param_username, $param_fullname, $param_gmail, $param_phone, $param_password, $param_role, $param_photo);

            // Set parameters
            $param_username = $username;
            $param_fullname = $fullname;
            $param_gmail = $gmail;
            $param_phone = $phone;
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            $param_role = $role;
            $param_photo = $photo;

            // Attempt to execute the prepared statement
            if ($stmt->execute()) {
                // Redirect to login page
                header("location: index.php");
                exit();
            } else {
                echo "Something went wrong. Please try again later.";
            }

            // Close statement
            $stmt->close();
        }
    }

    // Close connection
    $mysqli->close();
}
?>
<?php
// Fetch existing roles from the database
$sql = "SELECT role FROM admin";
$result = $mysqli->query($sql);

// Store existing roles in an array
$existing_roles = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $existing_roles[] = $row["role"];
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Gradute Registration </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

    <link rel="shortcut icon" href="https://apps.evsu.edu.ph/assets/img/favicon.ico"/>
    <link type="text/css" href="https://apps.evsu.edu.ph/assets/css/app.css" rel="stylesheet"/>

    
    <link rel="stylesheet" type="text/css" href="https://apps.evsu.edu.ph/assets/css/custom_css/widgets.css">
    <link rel="stylesheet" type="text/css" href="https://apps.evsu.edu.ph/assets/css/custom.css?v=1">
    <link href="https://apps.evsu.edu.ph/assets/css/app/evsu-theme.css?v=1" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/student register.css">
    <style>

        body { 
            background-image: url('./assets/imgs/evsu_carigara.jpg') !important; 
            background-size: cover !important; 
            background-attachment: fixed !important; 
            position: relative !important; 
            background-repeat: no-repeat !important; 
            padding: 0px !important;
        }

        .my-form-row {
        background-color: rgba(0,0,0,1);
        background-image: url('./assets/imgs/admin_login.jpg') !important;<!--image_under--> 
        background-size: 70% 100% !important;  
        background-position: -100px bottom !important;  
        position: relative !important; 
        background-repeat: no-repeat !important; 
    }
    </style>
<body class="boxed">
<!-- header logo: style can be found in header-->
<div class="wrapper row-offcanvas row-offcanvas-left">
    <!-- Left side column. contains the logo and sidebar -->

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12" style="margin-top: 15px"></div>
              
<div class="flex-container" style="margin-bottom: 2%;">
    <div class="container"> 
        <div class="row row-inner-container"> 
            <div class="col-md-12">
                <div class="row my-form-row" >
                    <div class="col-md-6 my-col"> 
                        <div class="logo-container">
                            <!--logo-->
                            <img class="img-logo" src="https://apps.evsu.edu.ph/assets/img/images/logo-v3.png?v=1">
                        </div> 
                    </div>
                    <div class="col-md-6 my-col">
                        <div class="my-form-container">
                            <div class="my-form-inner-container">
                                <div class="panel-header">
                                    <h2 class="text-center">
                                       ADMIN GRADUATE PORTAL
                                    </h2> 
                                </div>
                                <div class="panel-body"> 
                                    <div class="row">
                                        <div style="margin-bottom: 0px;padding-top:0px;" class="col-xs-12 box animated fadeInUp">  
                                            <h3 class="text-center" style="margin-bottom: 25px;font-weight: bold">Admin Registration</h3> 
                                            
                                            <form id="signupForm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST" enctype="multipart/form-data">
                                                            <div class="form-group">
                                                                <label class="">Uername</label>
                                                                <input type="text" name="username" class="form-control required input-lgl <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $username_err; ?></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="">Fullname</label>
                                                                <input type="text" name="fullname" class="form-control required input-lgl <?php echo (!empty($fullname_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $fullname; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $fullname_err; ?></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="">Gmail</label>
                                                                <input type="email" name="gmail" class="form-control required input-lgl <?php echo (!empty($gmail_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $gmail; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $gmail_err; ?></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="">Phone Number</label>
                                                                <input type="text" name="phone" class="form-control required input-lgl <?php echo (!empty($phone_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $phone; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $phone_err; ?></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="">Upload Photo</label>
                                                                <input type="file" name="photo" class="form-control <?php echo (!empty($photo_err)) ? 'is-invalid' : ''; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $photo_err; ?></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="">Password</label>
                                                                <input id="password" name="password" type="password" class="form-control required input-lg <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $password; ?>" required>
                                                                <span class="invalid-feedback"><?php echo $password_err; ?></span>
                                                                <input type="checkbox" onclick="togglePasswordVisibility()">
                                                                <span>Show password</span>
                                                            </div>
                                                            <div class="form-group" style="color:#000; font-size: 5%;">
                                                                <label style="color: white;">Choose Course</label>
                                                                <select name="role" id="role" class="form-control required input-lg <?php echo (!empty($role_err)) ? 'is-invalid' : ''; ?>" required>
                                                                    <option hidden>Select your Department/Office/organiztion</option>
                                                                    <option value="Information Technology">Information Technology</option>
                                                                    <option value="Entrepreneurship">Entrepreneurship</option>
                                                                    <option value="Education">Education</option>
                                                                    <option value="Fisheries">Fisheries</option>
                                                                    <option value="Cashier">Cashier</option>
                                                                    <option value="SASO">SASO</option>
                                                                    <option value="Library">Library</option>
                                                                </select>
                                                                <span class="invalid-feedback" id="role_err"><?php echo $role_err; ?></span>
                                                            </div>
                                                            <div class="form-group text-center" style="margin-top: 20px;">
                                                                <button type="submit" name="submit" class="btn btn-primary btn-block btn-lg">Signup</button>
                                                            </div>
                                                        </form>
                                        </div>
                                        <div class="col-xs-12">
                                            <br><br><hr>
                                            <p class="text-center" style="font-size:20px">I have already an accont
                                                <a href="./index.php" style="font-size:20px">Login</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div> 
        </div>  
    </div> 
</div>   
<script src="https://apps.evsu.edu.ph/assets/js/app.js" type="text/javascript"></script>
<script src="./assets/js/showpassword.js" type="text/javascript"></script>
<script src="./assets/js/gmail_check_format.js" type="text/javascript"></script>
<script>
    var existingRoles = <?php echo json_encode($existing_roles); ?>;
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Function to check if the selected role has already been assigned to an admin
        function checkRoleAvailability() {
            var selectedRole = document.getElementById("role").value;

            if (existingRoles.includes(selectedRole)) {
                // Role already exists, display error message
                alert("Role already assigned to an admin. Please select a different role.");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }

        // Event listener for form submission
        document.getElementById("signupForm").addEventListener("submit", function (event) {
            if (!checkRoleAvailability()) {
                event.preventDefault(); // Prevent form submission if role already exists
            }
        });
    });
</script>

<!--phone-->
<script>
    document.addEventListener("DOMContentLoaded", function () {
    function checkPhoneFormat() {
        var phone = document.querySelector("input[name='phone']").value;
        var phoneRegex = /^[0-9]{10,15}$/; // Simple phone number format validation

        if (!phoneRegex.test(phone)) {
            alert("Invalid phone number format. Enter 10 to 15 digits.");
            return false;
        }
        return true;
    }

    document.getElementById("signupForm").addEventListener("submit", function (event) {
        if (!checkPhoneFormat()) {
            event.preventDefault(); // Prevent form submission if phone number is invalid
        }
    });
});
</script>
<!--Image-->
<script>
    document.addEventListener("DOMContentLoaded", function () {
    function validatePhoto() {
        var photoInput = document.querySelector("input[name='photo']");
        var file = photoInput.files[0];
        var allowedTypes = ["image/jpeg", "image/png", "image/gif"];
        var maxSize = 2 * 1024 * 1024; // 2MB

        if (!file) {
            alert("Please upload a photo.");
            return false;
        }

        if (!allowedTypes.includes(file.type)) {
            alert("Invalid photo format. Only JPG, JPEG, PNG, and GIF are allowed.");
            return false;
        }

        if (file.size > maxSize) {
            alert("Photo size should not exceed 2MB.");
            return false;
        }

        return true;
    }

    document.getElementById("signupForm").addEventListener("submit", function (event) {
        if (!validatePhoto()) {
            event.preventDefault(); // Prevent form submission if photo is invalid
        }
    });
});
</script>
</body>
</html>
