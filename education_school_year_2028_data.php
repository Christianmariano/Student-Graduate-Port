<?php require 'config.php'; ?>
<table border = 1>
  <tr >
    <th colspan="6">Deparment of Education</th>
  </tr>
  <tr>
  <th colspan="6">Fourth Year School Year 2028</th>
  </tr>
  <tr>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Toga Amount for rent</th>
    <th>Payment Status</th>
    <th>Rent Toga Status</th>
  </tr>
  <?php
  $i = 1;
  $rows = mysqli_query($link, "SELECT * FROM education_student_record_school_year_2028");
  foreach($rows as $row) :
  ?>

  <tr>
    <td> <?php echo $row["student_id"]; ?> </td>
    <td> <?php echo $row["student_name"]; ?> </td>
    <td> <?php echo $row["toga_amount"]; ?> </td>
    <td> <?php echo $row["payment_status"]; ?> </td>
    <td> <?php echo $row["rent_status"]; ?> </td>
  </tr>
  <?php endforeach; ?>
</table>
