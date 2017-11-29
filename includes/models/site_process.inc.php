<?php
	include '../bootstrap.php';
	session_start();
	


	if (isset($_POST['site_list_value'])) 
	{

		

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
