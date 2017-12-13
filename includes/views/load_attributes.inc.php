<?php

  session_start(); 
  include '../bootstrap.php';	

  $org_name = mysqli_real_escape_string($conn,$_POST['org']);

    $sql = "SELECT * FROM org_profile WHERE orgName = '$org_name'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $org_id = $row['orgID'];

  $selected_sub_cat = mysqli_real_escape_string($conn,$_POST['selected_sub_cat']);
	
  $sql_att = "SELECT * FROM attributes,sub_cat WHERE subCatName = '$selected_sub_cat' AND sub_cat.griCatID = attributes.griCatID";
  $att_result = mysqli_query($conn, $sql_att);


  echo "<div id='attribute_list_container'><div id='sub_cat_title'><h1>".$selected_sub_cat."</h1></div>";
  if (isset($_SESSION['user_id']))
  {
      while ($row_att = $att_result->fetch_assoc())
      {
      $att_name = $row_att['griName'];
      echo "<div id='attribute_list'>" . $row_att['griName'] . "<div id='edit_btn'></div>";
      $att_id = $row_att['attributeID'];

      $sql = "SELECT * FROM attribute_orgs_sites WHERE attributeID = '$att_id' AND orgID = '$org_id'";
      $result = mysqli_query($conn, $sql);
      $row = mysqli_fetch_assoc($result);
      echo $row['attributeData'] . "</div>";  


      } 
  }
  else
  {
    while ($row_att = $att_result->fetch_assoc())
    {
      $att_name = $row_att['griName'];
      echo "<div id='attribute_list'>" . $row_att['griName'] . "</div>";
    } 

  }
  
  echo "</div>";
 
