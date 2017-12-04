
<!-- Google API key: AIzaSyBHZvUPwL77h619fuPWHSSodVSsgoz51n0



 -->
<?php
  session_start(); 
  include '../bootstrap.php';
  
  $trail_name = $_POST['trail_name'];
  $sql = "SELECT * FROM org_profile,user WHERE orgName = '$trail_name' AND org_profile.userID=user.userID";
  $result = mysqli_query($conn, $sql);

  $row = mysqli_fetch_assoc($result);
  $trail_id = $row['orgID'];
  $trail_description = $row['orgInfoText'];
  $trail_creator = $row['userName'];

  echo "<input type='hidden' id='vote_trail_name' value='$trail_name'></input>";
  echo "<input type='hidden' id='vote_trail_creator_name' value='$trail_creator'></input>"; 
  
  echo "<div id ='trail_information'";
  echo "<label id='trail_name_in_display' value='$trail_name'><h1>$trail_name</h1></label>";
  echo "<label id='trail_creator_name_in_display' value='$trail_creator'>Skapad av: $trail_creator</label>"; 
  echo "<text id='trail_description' value='$trail_name'>Beskrivning: $trail_description</text>";
  echo "</div>";

  $sql_att = "SELECT * FROM attributes WHERE attributeID < 13";
  $att_result = mysqli_query($conn, $sql_att);
  while ($row_att = $att_result->fetch_assoc())
  {
      $att_name = $row_att['griName'];
      echo "<div class='attribute_tiles'>" . $row_att['griName'] . "<div id='edit_btn'></div></div>";
  } 
 
  
   

 
