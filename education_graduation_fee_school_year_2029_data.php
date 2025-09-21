<?php require 'config.php'; ?>
<table border = 1>
  <tr >
    <th colspan="5">Department of Education</th>
  </tr>
  <tr>
    <th colspan="5">School Year 2029</th>
  </tr>
  <tr>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Graduation Fee</th>
    <th>Graduation Fee Status</th>
  </tr>
  <?php
  $i = 1;
  $rows = mysqli_query($link, "SELECT * FROM education_student_record_school_year_2029");
  foreach($rows as $row) :
  ?>

  <tr>
    <td> <?php echo $row["student_id"]; ?> </td>
    <td> <?php echo $row["student_name"]; ?> </td>
    <td> <?php echo $row["graduation_fee"]; ?> </td>
    <td> <?php echo $row["graduation_fee_status"]; ?> </td>
  </tr>
  <?php endforeach; ?>
</table>
