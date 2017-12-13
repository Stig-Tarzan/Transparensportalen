
<!-- Google API key: AIzaSyBHZvUPwL77h619fuPWHSSodVSsgoz51n0



 -->
<?php
  session_start(); 
  include '../bootstrap.php';
  
  $trail_name = $_POST['trail_name'];
  $sql = "SELECT * FROM org_profile,user WHERE orgName = '$trail_name' AND org_profile.userID=user.userID";
  $result = mysqli_query($conn, $sql);

  $sql_env = "SELECT COUNT(attributes.attributeID) as no_att_total , COUNT(attribute_orgs_sites.attributeID) as no_att FROM org_profile,attributes,attribute_orgs_sites,sub_cat WHERE sub_cat.griCatID = 1 AND sub_cat.subCatID = attributes.subCatID AND orgName = '$trail_name' AND org_profile.orgID = attribute_orgs_sites.orgID";
  $env_result = mysqli_query($conn, $sql_env);
  $row_env_att = mysqli_fetch_assoc($env_result);

  $env_total = $row_env_att['no_att_total'];
  $env_curr = $row_env_att['no_att'];

  $row = mysqli_fetch_assoc($result);
  $trail_id = $row['orgID'];
  $trail_description = $row['orgInfoText'];
  $trail_creator = $row['userName'];

  echo "<input type='hidden' id='vote_trail_name' value='$trail_name'></input>";
  echo "<input type='hidden' id='vote_trail_creator_name' value='$trail_creator'></input>"; 
  
  echo "<div id ='trail_information'";
  echo "<label id='trail_name_in_display' value='$trail_name'><h1>$trail_name</h1></label>";
 
  echo "<text id='trail_description' value='$trail_name'>Beskrivning: $trail_description</text>";
  echo "</div>";

  echo "<div id='cat_outer_container'><div id='env_container' class='cat_container'><div id='environmental' class='att_categories'>Environmental<p>". $env_curr . "/". $env_total . "</div></div>";
  echo "<div id='soc_container' class='cat_container'><div id='social' class='att_categories'>Social</div></div>";
  echo "<div id='eco_container'class='cat_container'><div id='economic' class='att_categories'>Economic</div></div></div>";
 
  
   

 
