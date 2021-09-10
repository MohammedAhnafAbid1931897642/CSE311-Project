<?php
error_reporting(0);
$button = $_POST['button'];

	// Database connection
	$conn = new mysqli('localhost','root','','zoo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {

    if (isset($button)) {

      $stmt = $conn->prepare("insert into details(button) values(?)");
      $stmt->bind_param("s", $button);
      $execval = $stmt->execute();

      echo $execval;
      echo "Payment added successfully...";
      echo "Redirecting in 5 seconds...";
      echo '<html>
      <head>
          <meta http-equiv="refresh" content="5;url=Details.html" />
      </head>
      <body>';
      $stmt->close();
      $conn->close();


    }else{
      $name = $_POST['name'];
      $email = $_POST['email'];
      $comment = $_POST['comment'];




      $stmt = $conn->prepare("insert into details(name, email, comment) values(?, ?, ?)");
      $stmt->bind_param("sss", $name, $email, $comment);
      $execval = $stmt->execute();

      echo $execval;
      echo "Comment added successfully...";
      echo "Redirecting in 5 seconds...";
      echo '<html>
      <head>
          <meta http-equiv="refresh" content="5;url=Details.html" />
      </head>
      <body>';
      $stmt->close();
      $conn->close();


	}

}
?>
