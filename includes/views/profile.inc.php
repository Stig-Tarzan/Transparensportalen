<?php

include '../bootstrap.php';
session_start(); 

	if(isset($_SESSION['user_name']))
	{
		$logged_in = $_SESSION['user_id'];


	$sql = "SELECT * FROM org_profile WHERE org_profile.userID='$logged_in'";
	$result = mysqli_query($conn, $sql);

	$org_counter = 0;

	

		while ($row = $result->fetch_assoc())  
		{
			$org_name = $row['orgName'];

			$sql_org_id = "SELECT * FROM org_profile WHERE orgName='$org_name'";
			$result_org_id=mysqli_query($conn, $sql_org_id);
			$row_org_id=mysqli_fetch_assoc($result_org_id);
			$org_id = $row_org_id['orgID'];
			$org_counter ++;

		}
		
				echo "<div id='username_welcome'>" .$_SESSION['user_name'] ."</div>";
				if($_SESSION['admin'] == 1)
				{
					echo "<a id='admin_page'>Administratörssida</a>";
				}

				
				echo "<a id='create_new_organization'>Registrera organisation</a>";
				echo "<a id='user_trails'>Mina registereade organisationer</a>";
		echo "

				<a class='banner_obj' id='log_out_button'>Logga ut </a>
				";	
	}

