<?php
	$ID = $_POST['ID'];
	$password = $_POST['password'];
  $check_box= $_POST['check_box'];

	// Database connection
	$conn = new mysqli('localhost','root','','zoo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into login(ID, password, check_box) values(?, ?, ?)");
		$stmt->bind_param("iss", $ID, $password, $check_box);
		$execval = $stmt->execute();

		echo $execval;
		echo "Logged in successfully...";
    echo "Redirecting in 5 seconds...";
    echo '<html>
    <head>
        <meta http-equiv="refresh" content="5;url=log%20in.html" />
    </head>
    <body>';
		$stmt->close();
		$conn->close();
	}
?>
