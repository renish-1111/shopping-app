<?php
define('DB_SERVER','bzsves964f5np0tzhr7x-mysql.services.clever-cloud.com');
define('DB_USER','uddji9eiwifebjtg');
define('DB_PASS' ,'scYmywMGNde7ZsYluwIR');
define('DB_NAME', 'bzsves964f5np0tzhr7x');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>