<?php
	include '../bootstrap.php';
	session_start();
	


	if (isset($_POST['trail_name_value'])) 
	{
		$user_name = mysqli_real_escape_string ($conn,$_SESSION['user_name']);
		$org_number = mysqli_real_escape_string ($conn,$_POST['org_number_value'])
		$org_name = mysqli_real_escape_string ($conn,$_POST['org_name_value']);
		$org_street = mysqli_real_escape_string ($conn,$_POST['org_street_value']);
		$org_postno = mysqli_real_escape_string ($conn,$_POST['org_postno_value']);
		$org_city = mysqli_real_escape_string ($conn,$_POST['org_city_value']);
		$org_creation_date = mysqli_real_escape_string ($conn,$_POST['org_creation_date_value']);
		$org_info = mysqli_real_escape_string ($conn,$_POST['org_info_value']);

		$sql = "SELECT userID FROM user WHERE userName = '$user_name'";
		$result = mysqli_query($conn, $sql);

		$row = mysqli_fetch_assoc($result);
		$user_ID = $row['userID'];	

		$sql = "INSERT INTO org_profile (userID, trailName, creationDate, trailInfoText, trailShape, difficultyLevel, trailLength) 
			VALUES ('$user_ID', '$trail_name', '$trail_creation_date', '$trail_info', '$trail_shape', '$trail_difficulty_level', '$trail_length')";	
		$result = mysqli_query($conn, $sql);

		if ($result) 
		{
			echo "Led registrerad";
		}
		else
		{
			echo "Led inte registrerad";
		}
	}
