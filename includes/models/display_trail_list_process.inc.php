<?php
	include '../bootstrap.php';
	session_start();


	$search_input = mysqli_real_escape_string ($conn,$_POST['search_input']);
	$search_input_exploded = explode(" ", $search_input);

	if (!empty($search_input)) 
	{
		for ($i=0; $i < count($search_input_exploded); $i++) 
		{ 
			$sql = "SELECT * FROM org_profile,user WHERE org_profile.userID=user.userID AND orgName LIKE '%$search_input_exploded[$i]%' ";
			$result = mysqli_query($conn, $sql);
		}
	}
	else
	{
		$sql = "SELECT * FROM org_profile,user WHERE org_profile.userID=user.userID";
		$result = mysqli_query($conn, $sql);
	}
		while ($row = $result->fetch_assoc())  
		{
			$trail_name = $row['orgName'];

			$sql_trail_id = "SELECT * FROM org_profile WHERE orgName='$trail_name'";
			$result_trail_id=mysqli_query($conn, $sql_trail_id);
			$row_trail_id=mysqli_fetch_assoc($result_trail_id);
			$trail_id = $row_trail_id['orgID'];



			echo "<div id='".$trail_name."' class='trails_in_list' title='".$row['userName']."'>"; 
			echo "<img src='assets/img/maps_icon.png' class='trail_img'><div class='trail_content_info'>";
			echo "<label id='trail_name_in_list'>" . $trail_name . "</label> <br>	";
			echo "<label class='trail_list_username'>Skapad av: ". $row['userName'] . "<label>";
			echo "</div>";
			
			echo "<label class='trail_list_date'>" .$row['creationDate']. "</label>" ;
			
			echo "</div>";
		}


