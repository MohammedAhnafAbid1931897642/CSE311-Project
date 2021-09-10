<?php
	$name = $_POST['name'];
	$email = $_POST['email'];
  $subject= $_POST['subject'];
  $message= $_POST['message'];

	// Database connection
	$conn = new mysqli('localhost','root','','zoo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into contact(name, email, subject, message) values(?, ?, ?, ?)");
		$stmt->bind_param("ssss", $name, $email, $subject, $message);
		$execval = $stmt->execute();

		echo $execval;
		echo "Message sent successfully...";
    echo "Redirecting in 5 seconds...";
    echo '<html>
    <head>
        <meta http-equiv="refresh" content="5;url=contact.html" />
    </head>
    <body>';
		$stmt->close();
		$conn->close();
	}
?>
