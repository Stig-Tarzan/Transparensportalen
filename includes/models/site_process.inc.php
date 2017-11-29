<?php
	include '../bootstrap.php';
	session_start();
	


	if (isset($_POST['org_number_value'])) 
	{
		$site_name = mysqli_real_escape_string ($conn,$_POST['site_name_value']);
		$site_street = mysqli_real_escape_string ($conn,$_POST['site_street_value']);
		$site_zipcode = mysqli_real_escape_string ($conn,$_POST['site_zipcode_value']);
		$site_city = mysqli_real_escape_string ($conn,$_POST['site_city_value']);
		$org_number = mysqli_real_escape_string ($conn,$_POST['org_number_value']);
		

		$sql = "SELECT orgID FROM org_profile WHERE orgNumber = '$org_number'";
		$result = mysqli_query($conn, $sql);

		$row = mysqli_fetch_assoc($result);
		$org_ID = $row['orgID'];	

		$sql = "INSERT INTO site (orgID, siteName, street, zipcode, city) 
			VALUES ('$org_ID', '$site_name', '$site_street', '$site_zipcode', '$site_city')";	
		$result = mysqli_query($conn, $sql);

		if ($result) 
		{
			echo "Site registrerad";
		}
		else
		{
			echo "Site inte registrerad";
		}
	}
