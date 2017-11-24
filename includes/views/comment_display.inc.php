<?php
	include '../bootstrap.php';
	session_start();

	$trail_name = $_POST['trail_name'];
	$sql = "SELECT * FROM org_profile WHERE trailName = '$trail_name'";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	$trail_id = $row['trailID'];

	$sql = "SELECT * FROM comment WHERE trailID ='$trail_id'";
	$result = mysqli_query($conn, $sql);



	
//Ovan bör ligga kvar och $result bör "Returnas"

//Vi bör bryta ut nedan till en view



