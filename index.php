<?php
include("header.php");
include("dbc.php");

if (isset($_POST['submit'])) {

	foreach ($_POST['emp'] as $id => $status) {

	$name = $_POST['name'][$id];
	$email = $_POST['email'][$id];
	$date = date("Y-m-d");

    $qry = "INSERT INTO attendance(name, email, status, dates)
    VALUES ('$name' , '$email' , '$status' , '$date')";
    $run = mysqli_query($conn , $qry);


	}

}

?>
	
<div class="jumbotron">
  <h1 class="display-4 text-center mx-4 mt-4">Attendance Managment System </h1>
  <div class="container">
  <a href="view.php"><button type="button" class="btn btn-primary">View</button></a>
  <a type="button" href="add.php" class="btn btn-primary float-right">Add</a>
  <div><h3 class="bg-danger d-inline"><?php echo date("d-m-Y"); ?> </h3></div> 
  </div>
</div>
 
  <hr class="my-4">
  <form action="index.php" method="post">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Father Name</th>
      <th scope="col">Email</th>
      <th scope="col">Attendance</th>
    </tr>
    <tr>
      
		<?php
		
		$sql = "SELECT * FROM emp";
		$result = $conn->query($sql);

		        $serialnumber=0;
		        $counter=0;
		    // output data of each row
		    while($row = $result->fetch_assoc()) {
		    	$serialnumber++;
		    	?>
		          <tr>
			      <th scope="row"><?php echo $row['emp_id'];?></th>
			      <td><?php echo $row['name'] ; ?></td>
			      <input type="hidden" value=<?php echo $row['name']; ?> name="name[]">
			      <td><?php echo $row['fname']; ?></td>
			      <input type="hidden" value=<?php echo $row['fname']; ?> name="fname[]">
			      <td><?php echo $row['email']; ?></td>
			      <input type="hidden" value=<?php echo $row['email']; ?> name="email[]">
	  <td>Present <input type="radio" Name="emp[<?php echo $counter; ?>]" value="Present">
          Absent <input type="radio" Name="emp[<?php echo $counter; ?>]" value="Absent">
                     
      </td> 
      </tr>

      <?php
        
        $counter++;
       }?>    

		<?php

		echo "</thead></table>";?>
        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        
		</form>
	

<?php
include("footer.php");

?>