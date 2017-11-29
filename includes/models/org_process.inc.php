<?php
	include '../bootstrap.php';
	session_start();
	


	if (isset($_POST['trail_name_value'])) 
	{
		$user_name = mysqli_real_escape_string ($conn,$_SESSION['user_name']);
		$org_number = mysqli_real_escape_string ($conn,$_POST['org_number_value'])
		$org_street = mysqli_real_escape_string ($conn,$_POST['org_street_value']);
		$org_name = mysqli_real_escape_string ($conn,$_POST['org_name_value']);
		$org_postnumber = mysqli_real_escape_string ($conn,$_POST['org_postnumber_value']);
		$org_city = mysqli_real_escape_string ($conn,$_POST['org_city_value']);
		$org_creation_date = mysqli_real_escape_string ($conn,$_POST['org_creation_date_value']);
		$org_info = mysqli_real_escape_string ($conn,$_POST['org_info_value']);

		$sql = "SELECT userID FROM user WHERE userName = '$user_name'";
		$result = mysqli_query($conn, $sql);

		$row = mysqli_fetch_assoc($result);
		$user_ID = $row['userID'];	

		$sql = "INSERT INTO org_profile (userID, orgNumber, orgName, orgStreet, orgPostNumber, orgCity, creationDate, orgInfoText) 
			VALUES ('$user_ID', '$org_number', '$org_name', '$org_street', '$org_postnumber', '$org_city', '$org_creation_date', '$org_info')";	
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
