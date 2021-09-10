<?php
	$amount = $_POST['amount'];
	$fname = $_POST['fname'];
  $lname= $_POST['lname'];
  $phone= $_POST['phone'];
  $cc= $_POST['cc'];
  $cvv= $_POST['cvv'];
  $email= $_POST['email'];


	// Database connection
	$conn = new mysqli('localhost','root','','zoo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into donate(amount, fname, lname, phone, cc, cvv, email) values(?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("isssiis", $amount, $fname, $lname, $phone, $cc, $cvv, $email);
		$execval = $stmt->execute();

		echo $execval;
		echo "Donation successful!...";
    echo "Redirecting in 5 seconds...";
    echo '<html>
    <head>
        <meta http-equiv="refresh" content="5;url=donate.html" />
    </head>
    <body>';
		$stmt->close();
		$conn->close();
	}
?>
