
<!-- Google API key: AIzaSyBHZvUPwL77h619fuPWHSSodVSsgoz51n0



 -->
<?php
  session_start(); 
  include '../bootstrap.php';
  $trail_creator = $_POST['trail_creator'];
  $selected_trail = $_POST['selected_trail'];
  $trail_name = $_POST['trail_name'];
  $sql = "SELECT * FROM org_profile WHERE trailName = '$trail_name'";
  $result = mysqli_query($conn, $sql);

/*  $sql_vote = "SELECT * FROM user,trail join (SELECT trail.trailID, SUM(vote) as 'rating' FROM vote,trail WHERE vote.trailID = trail.trailID group by trail.trailID) rate on trail.trailID = rate.trailID WHERE trail.userID=user.userID AND trail.trailName = '$trail_name'";
  $result_vote = mysqli_query($conn, $sql_vote);
  $row_vote = mysqli_fetch_assoc($result_vote);
  $rating = $row_vote['rating'];*/


  $row = mysqli_fetch_assoc($result);
  $trail_id = $row['trailID'];
  $trail_description = $row['trailInfoText'];
  $trail_length = $row['trailLength'];

  



  echo "<input type='hidden' id='vote_trail_name' value='$trail_name'></input>";
  echo "<input type='hidden' id='vote_trail_creator_name' value='$trail_creator'></input>"; 

  echo "<div id ='trail_information'";
  echo "<label id='trail_name_in_display' value='$trail_name'><h1>$trail_name</h1></label>";
  echo "<label id='trail_creator_name_in_display' value='$trail_creator'>Skapad av: $trail_creator</label>"; 
  echo "<text id='trail_description' value='$trail_name'>Beskrivning: $trail_description</text>";
  echo "<text id='trail_description' value='$trail_name'>Längd: $trail_length meter</text>";
  echo "</div>";
  
   

 
