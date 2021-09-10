<?php
    $firstName= $_POST['firstName'];
    $lastName= $_POST['lastName'];
    $age= $_POST['age'];
    $email= $_POST['email'];
    $epass= $_POST['epass'];
    $repass= $_POST['repass'];
    $gender= $_POST['gender'];

    //Database connection
    $conn = new mysqli('localhost','root','','test');
    if($conn->connection_error){
      die('Connection Failed :' .$conn->connect_error);
    }
    else{
      $stmt=$conn->prepare("insert into registration(firstName, lastName, age, email, epass, repass, gender)
          values(?, ?, ?, ?, ?, ?, ?)");
      $stmt->bind_param("ssissss", $firstName, $lastName, $age, $email, $epass, $repass, $gender);
      $stmt->execute();
      echo "Registration successful";
      $stmt->close();
      $conn->close();
    }
?>
