<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: adminlogin.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shorcut icon" type="x-icon" href="assets/imgs/logo.jpg">
    <title>Graduate Portal</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <style>
        .user {
            position: relative;
            width: 40px;
            height: 40px;
            margin-right: 5%;
        }
        .form-container {
            margin-top: 20px;
        }
        .form-container form {
            display: flex;
            flex-direction: column;
        }
        .form-container input, .form-container button {
            margin-bottom: 10px;
        }
        .file-list {
            margin-top: 20px;
        }
        .file-item {
            margin-bottom: 10px;
            padding: 10px;
            background-color: whitesmoke;
            color: black;
            border: 1px solid #ddd;
        }
        .file-item a {
            text-decoration: none;
            color: #333;
        }
        .file-buttons {
            display: flex;
            gap: 10px;
        }

        .btn-view, .btn-download {
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            border-radius: 3px;
            font-size: 0.9rem;
        }

        .btn-view {
            background-color: #007bff;
        }

        .btn-download {
            background-color: #28a745;
        }

        .profile-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px;
        }
        .profile-image {
            flex: 1;
            display: flex;
            justify-content: center;
        }
        .profile-image img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
        }
        .profile-form {
            flex: 2;
            margin-left: 20px;
        }
        .profile-form form {
            display: flex;
            flex-direction: column;
        }
        .profile-form input, .profile-form button {
            margin-bottom: 10px;
            padding: 10px;
            font-size: 1rem;
        }
        .profile-form button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .profile-form button:hover {
            background-color: #0056b3;
        }

        /*dropdown*/
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 300px; /*change size dropdown menu*/
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            z-index: 1;
            border-radius: 8px;
            overflow: hidden;
        }
        .dropdown-content a {
            color: #333;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s, color 0.3s;
        }
        .dropdown-content a:hover {
            background-color: #007bff;
            color: #fff;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown-content::before {
            content: '';
            position: absolute;
            top: -10px;
            right: 20px;
            border-width: 10px;
            border-style: solid;
            border-color: transparent transparent #fff transparent;
        }
    </style>
</head>
<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
        <ul>
                <div style="background-color: red; width: 100%; height: 80%; margin-top: 5%;">
                    <li>
                        <center>
                            <img src="https://apps.evsu.edu.ph/assets/img/icons/free-ed-is.png?v=3" style="width: 80%; height: 40%; margin-top: 5%;" alt="error">
                        </center>
                    </li>
                </div>
                    <li>
                        <a href="admin_dashboard.php">
                            <span class="icon">
                                <ion-icon name="home-outline"></ion-icon>
                            </span>
                            <span class="title">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_student_document.php">
                            <span class="icon">
                                <ion-icon name="document-outline"></ion-icon>
                            </span>
                            <span class="title">Document</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_student_schedule.php">
                            <span class="icon">
                                <ion-icon name="calendar-outline"></ion-icon>
                            </span>
                            <span class="title">Event Schedule</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                                <ion-icon name="megaphone-outline"></ion-icon>
                            </span>
                            <span class="title">Announcement</span>
                        </a>
                        <div class="dropdown-content">
                        <a href="admin_student_document_upload.php">General Announcement</a>
                            <a href="admin_user_profile_general_info.php">On the Job Training(OJT)</a>
                        </div>
                    </li>
                    <li>
                        <a href="admin_student_studentuser.php">
                            <span class="icon">
                                <ion-icon name="person-outline"></ion-icon>
                            </span>
                            <span class="title">Student Info</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_document_record.php">
                            <span class="icon">
                                <ion-icon name="person-circle-outline"></ion-icon>
                            </span>
                            <span class="title">Student Record</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                                <ion-icon name="person-circle-outline"></ion-icon>
                            </span>
                            <span class="title">Profile</span>
                        </a>
                        <div class="dropdown-content">
                            <a href="admin_user_profile_general_info.php">General Info</a>
                            <a href="admin_user_profile_change_password.php">Change Password</a>
                        </div>
                    </li>
                    <li>
                        <a href="admin_logout.php">
                            <span class="icon">
                                <ion-icon name="log-out-outline"></ion-icon>
                            </span>
                            <span class="title">Sign Out</span>
                        </a>
                    </li>
            </ul>
        </div>
        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>
                

                <div class="user">
                    <h1><?php echo htmlspecialchars($_SESSION["username"]); ?><h1>
                </div>
            </div>
            <div class="details">
                <!-- =================  ================ -->
                <div class="document">
                    <div class="cardHeader">
                        <h2>Document</h2>
                    </div>
                    <div class="search-container" style="margin-bottom: 20px;">
                        <form action="" method="GET">
                            <input type="text" name="search" placeholder="Search by file name" style="padding: 5px; font-size: 1rem;">
                            <button type="submit" style="padding: 5px 10px; font-size: 1rem;">Search</button>
                        </form>
                    </div>
                    <div style="height: 600px; overflow-y: auto;">
                        <?php
                            require_once 'config.php';

                            // Get search query from URL
                            $searchQuery = isset($_GET['search']) ? $link->real_escape_string($_GET['search']) : '';

                            // Query to get the list of files, with optional search filter
                            $sql = "SELECT file_name, file_type FROM file_upload WHERE file_name LIKE '%$searchQuery%' ORDER BY upload_time DESC";
                            $result = $link->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $fileName = htmlspecialchars($row['file_name']);
                                    $fileType = htmlspecialchars($row['file_type']);
                                    $filePath = 'uploads_file/' . $fileName;

                                    // Display file only if it's PDF, DOC, or DOCX
                                    if (in_array($fileType, ['pdf', 'doc', 'docx'])) {
                                        echo '<div class="file-item">';

                                        // Display file icon based on type
                                        if ($fileType == 'pdf') {
                                            echo '<img src="https://img.icons8.com/ios-filled/50/000000/pdf.png" alt="pdf icon">';
                                        } elseif ($fileType == 'doc' || $fileType == 'docx') {
                                            echo '<img src="https://img.icons8.com/ios-filled/50/000000/word.png" alt="doc icon">';
                                        }

                                        echo '<a href="' . $filePath . '" target="_blank">' . $fileName . '</a>';

                                        // Add "View" and "Download" buttons
                                        echo '<div class="file-buttons">';
                                        if ($fileType == 'doc' || $fileType == 'docx') {
                                            $googleDocsViewerUrl = 'https://docs.google.com/viewer?url=' . urlencode($filePath);
                                            echo '<a href="' . $googleDocsViewerUrl . '" target="_blank" class="btn-view">View</a>';
                                        } else {
                                            echo '<a href="' . $filePath . '" target="_blank" class="btn-view">View</a>';
                                        }
                                        echo '<a href="' . $filePath . '" download class="btn-download">Download</a>';
                                        echo '</div>';
                                        echo '</div>';
                                    }
                                }
                            } else {
                                echo 'No document found.';
                            }

                            $link->close();
                        ?>
                    </div>
                </div>
                <div class="form-container">
                    <div style="background-color: whitesmoke; color: black; height: 18%;">
                        <form action="upload_file.php" method="POST" enctype="multipart/form-data">
                            <p style="margin-top: 5%;">Add Document</p>
                            <input type="file" name="uploadedFile" id="uploadedFile" required>
                            <button type="submit" name="submit">Upload File</button>
                        </form>
                    </div>
                    <div style="background-color: whitesmoke; color: black; height: 15%;">
                        <div style="background-color: whitesmoke; color: black; height: 10%;">
                            <form action="delete_file.php" method="POST" style="margin-top: 20px;">
                                <p style="margin-top: 3%;">Delete Document</p>
                                <input type="text" name="file_name" id="file_name" placeholder="Enter file name" required>
                                <button style="width: 100%;" type="submit">Delete File</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="file-list">
                </div>
            </div>
        </div>
    </div>
    <!-- =========== Scripts ========= -->
    <script src="assets/js/main.js"></script>
    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>

     <!-- submenu -->
     <script>
        document.addEventListener('DOMContentLoaded', function() {
    const user = document.querySelector('.user');
    const dropdownMenu = document.querySelector('.dropdown-menu');

    user.addEventListener('click', function() {
        dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
    });

    document.addEventListener('click', function(event) {
        if (!user.contains(event.target)) {
            dropdownMenu.style.display = 'none';
        }
    });
});
    </script>
</body>
</html>