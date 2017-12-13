
<!-- Google API key: AIzaSyBHZvUPwL77h619fuPWHSSodVSsgoz51n0



 -->
<?php
  session_start(); 
  include '../bootstrap.php';
  
  $trail_name = $_POST['trail_name'];
  $sql = "SELECT * FROM org_profile,user WHERE orgName = '$trail_name' AND org_profile.userID=user.userID";
  $result = mysqli_query($conn, $sql);

  $sql_env = "SELECT COUNT(attributeID) as no_att_total FROM attributes,sub_cat WHERE sub_cat.griCatID = 1 AND sub_cat.subCatID = attributes.subCatID" ;
  $env_result = mysqli_query($conn, $sql_env);
  $row_env_att = mysqli_fetch_assoc($env_result);

  $sql_env_this = "SELECT COUNT(attributeID) as no_att FROM `attribute_orgs_sites` WHERE griCatID = 1" ;
  $env_result_this = mysqli_query($conn, $sql_env_this);
  $row_env_att_this = mysqli_fetch_assoc($env_result_this);

  $env_total = $row_env_att['no_att_total'];
  $env_curr = $row_env_att_this['no_att'];

  $sql_soc = "SELECT COUNT(attributeID) as no_att_total FROM attributes,sub_cat WHERE sub_cat.griCatID = 2 AND sub_cat.subCatID = attributes.subCatID" ;
  $soc_result = mysqli_query($conn, $sql_soc);
  $row_soc_att = mysqli_fetch_assoc($soc_result);

  $sql_soc_this = "SELECT COUNT(attributeID) as no_att FROM `attribute_orgs_sites` WHERE griCatID = 2" ;
  $soc_result_this = mysqli_query($conn, $sql_soc_this);
  $row_soc_att_this = mysqli_fetch_assoc($soc_result_this);

  $soc_total = $row_soc_att['no_att_total'];
  $soc_curr = $row_soc_att_this['no_att'];



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
  echo "<div id='soc_container' class='cat_container'><div id='social' class='att_categories'>Social<p>". $soc_curr . "/13</div></div>";
  echo "<div id='eco_container'class='cat_container'><div id='economic' class='att_categories'>Economic<p>0/18</div></div></div>";
 
  
   

 
