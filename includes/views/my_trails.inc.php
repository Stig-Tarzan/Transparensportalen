<?php
	include '../bootstrap.php';
	session_start();
	$loged_in = $_SESSION['user_id'];



	$sql = "SELECT * FROM org_profile WHERE org_profile.userID='$loged_in'";
	$result = mysqli_query($conn, $sql);

	$org_counter = 0;


			while ($row = $result->fetch_assoc())  //Runs through the entire result
			{
				$org_counter ++;
				echo "<div id='".$row['orgName'] ."' class='trails_in_list'>"; 
				echo "<img src='assets/img/maps_icon.png' class='trail_img'><div class='trail_content_info'>";
				echo "<label id='trail_name_in_list'>" . $row['orgName'] . "</label> <br>	";
				
				echo "</div>";
				
				echo "<label class='trail_list_date'>Skapad: " .$row['creationDate']. "</label>" ;
				
				echo "</div>";
			}
			if ($org_counter == 0) 
			{
				
			}

		
