<?php

  session_start(); 
  include '../bootstrap.php';	

  $selected_sub_cat = mysqli_real_escape_string($conn,$_POST['selected_sub_cat']);
	
  $sql_att = "SELECT * FROM attributes,sub_cat WHERE subCatName = '$selected_sub_cat' AND sub_cat.griCatID = attributes.griCatID";
  $att_result = mysqli_query($conn, $sql_att);
  echo "<div id='attribute_list_container'>";
  if (isset($_SESSION['user_id']))
  {
      while ($row_att = $att_result->fetch_assoc())
      {
      $att_name = $row_att['griName'];
      echo "<div id='attribute_list'>" . $row_att['griName'] . "<div id='edit_btn'></div></div>";
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
 
