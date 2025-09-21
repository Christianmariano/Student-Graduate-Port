<?php require 'config.php'; ?>
<table border = 1>
  <tr>
    <td>#</td>
    <td>Name</td>
    <td>Age</td>
    <td>Country</td>
  </tr>
  <?php
  $i = 1;
  $rows = mysqli_query($link, "SELECT * FROM student_record");
  foreach($rows as $row) :
  ?>
  <tr>
    <td> <?php echo $i++; ?> </td>
    <td> <?php echo $row["name"]; ?> </td>
    <td> <?php echo $row["age"]; ?> </td>
    <td> <?php echo $row["country"]; ?> </td>
  </tr>
  <?php endforeach; ?>
</table>
