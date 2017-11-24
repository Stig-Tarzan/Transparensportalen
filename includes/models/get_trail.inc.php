<?php
	include '../bootstrap.php';
	session_start();

	if (isset($_POST['trail_name_value'])) 
	{
		$trail_name = $_POST['trail_name_value'];

		$sql="SELECT * FROM org_profile WHERE trailName='$trail_name'";

		$result = mysqli_query($conn, $sql);
		if (!$result) 
		{
			echo "org_profile not found";
		}
		else
		{
			$row = mysqli_fetch_assoc($result);		
			echo $row['trailShape'];
		}
	}





