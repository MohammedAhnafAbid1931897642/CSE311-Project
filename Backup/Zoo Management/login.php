<?php
	$ID = $_POST['ID'];
	$password = $_POST['password'];
  $check_box= $_POST['check_box'];


	// Database connection
	$conn = new mysqli('localhost','root','','zoo2');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else if($ID==$password){
		echo "ID and password cannot be the same.";
		echo "\nRedirecting in 5 seconds...";
		echo '<html>
		<head>
				<meta http-equiv="refresh" content="5;url=log%20in.html" />
		</head>
		<body>';
	}
	else if($ID==11111 AND $password=="admin"){
		echo "\n ADMIN Logged in successfully...";
		echo "\nRedirecting to ADMIN PANEL in 5 seconds...";
		echo '<html>
		<head>
				<meta http-equiv="refresh" content="5;url=AdminPanel.html" />
		</head>
		<body>';

	}

		else{
			$stmt = $conn->prepare("insert into login(ID, password, check_box) values(?, ?, ?)");
			$stmt->bind_param("iss", $ID, $password, $check_box);
			$execval = $stmt->execute();

			echo $execval;
			echo "\nLogged in successfully...";
			echo "\nRedirecting to details page in 5 seconds...";
			echo '<html>
			<head>
					<meta http-equiv="refresh" content="5;url=details.html" />
			</head>
			<body>';
			$stmt->close();
			$conn->close();
		}


?>
