<?php
	include '../bootstrap.php';
	session_start();
	$loged_in = $_SESSION['user_id'];



	$sql = "SELECT * FROM org_profile join (SELECT org_profile.trailID, SUM(vote) as 'rating' FROM vote,org_profile WHERE vote.trailID = org_profile.trailID group by org_profile.trailID) rate on org_profile.trailID = rate.trailID WHERE org_profile.userID='$loged_in'";
	$result = mysqli_query($conn, $sql);

		while ($row = $result->fetch_assoc())  //Runs through the entire result
		{
			

			

			echo "<div id='".$row['trailName'] ."' class='trails_in_list'>"; 
			echo "<img src='assets/img/maps_icon.png' class='trail_img'><div class='trail_content_info'>";
			echo "<label id='trail_name_in_list'>" . $row['trailName'] . "</label> <br>	";
			echo "<label class='trail_list_difficulty'>Svårighet:<label>" . $row['difficultyLevel'] . "<br>";
			
			
			echo "</div>";
			
			echo "<label class='trail_list_rating'>" .$row['rating'].  "</label>";
			echo "<label class='trail_list_date'>Skapad: " .$row['creationDate']. "</label>" ;
			
			echo "</div>";
		}