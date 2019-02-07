<?php
include('header.php');

?>


<form action="add.php" method="post">
  <div class="form-group">
    <label for="Enter Name">Name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
     placeholder="Enter Name">
    
  </div>
  <div class="form-group">
    <label for="fname">Father Name</label>
    <input type="text" name="fname" class="form-control" id="exampleInputPassword1" placeholder="Father Name">
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputPassword1" placeholder="Email">
  </div>  <button type="submit" name="insert" class="btn btn-primary">Submit</button>
</form>

<?php
include('dbc.php');
if (isset($_POST['insert'])) {
  $name = $_POST['name'];
  $fname = $_POST['fname'];
  $email = $_POST['email'];

  $qry = "INSERT INTO emp (name, fname, email)
  VALUES ('$name', '$fname', '$email')" ;
  $run = mysqli_query($conn , $qry);
  if($run=true){
    ?>
    <script>
      alert("inserted");
    </script>
   <?php
  }
}


?>



