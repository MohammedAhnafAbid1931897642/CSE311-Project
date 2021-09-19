<?php
	$firstName = $_POST['firstName'];
	$lastName = $_POST['lastName'];
	$age = $_POST['age'];
	$email = $_POST['email'];
	$epass = $_POST['epass'];
	$repass = $_POST['repass'];
	$gender = $_POST['gender'];


	// Database connection
	$conn = new mysqli('localhost','root','','zoo2');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	}

	else if($epass!=$repass){
		echo "ERROR! Entered password and re-entered password must be the same.";
		echo "\nRedirecting in 5 seconds...";
		echo '<html>
		<head>
				<meta http-equiv="refresh" content="5;url=Registration.html" />
		</head>
		<body>';

	}

	else {
		$stmt = $conn->prepare("insert into registration(firstName, lastName, age, email, epass, repass, gender) values(?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssissss", $firstName, $lastName, $age, $email, $epass, $repass, $gender);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registration successful...";
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
