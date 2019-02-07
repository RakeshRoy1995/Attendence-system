<?php
include("header.php");
include("dbc.php");
?>
<center>

<table width="100%" border="1" style="border-collapse:collapse;">
<thead>
  <!-- <b>Serach Result</b> -->
<tr>
  <th><strong>Name</strong></th>
  <th><strong>Email</strong></th>
  <th><strong>Status</strong></th>
  <th><strong>Date</strong></th>
</tr>
</thead>
<tbody>
  <?php

  $sel_query = "Select * from attendance";
    $result = mysqli_query($conn,$sel_query);

$count=1;
while($row = mysqli_fetch_assoc($result)) { ?>
<tr>
  <td align="center"><?php echo $row["name"]; ?></td>
  <td align="center"><?php echo $row["email"]; ?></td>
  <td align="center"><?php echo $row["status"]; ?></td>
  <td align="center"><?php echo $row["dates"]; ?></td>
</tr>
<?php }?>
</tbody>
</table>

</center>


?>
<?php
include("footer.php");

?>