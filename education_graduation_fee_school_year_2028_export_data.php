<?php
// Headers for download
header("Content-Type: application/vnd.ms-excel");
header("Content-Disposition: attachment; Filename = Data.xls");

require 'education_graduation_fee_school_year_2028_data.php';
?>