<?php
  session_start(); 
  include '../bootstrap.php';
	if (isset($_POST['selected_att_cat'])) 
	{
		$selected_cat = mysqli_real_escape_string($conn,$_POST['selected_att_cat']);

		$sql = "SELECT griCatID FROM cat WHERE griCatName = '$selected_cat'";	
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
		$griCatID = $row['griCatID'];
		

		$sql_att = "SELECT * FROM sub_cat WHERE griCatID = '$griCatID'";
		$att_result = mysqli_query($conn, $sql_att);
		while ($row_att = $att_result->fetch_assoc())
		{
		    $att_name = $row_att['subCatName'];
		    echo "<div class='attribute_tiles'>" . $row_att['subCatName'] . "<div id='edit_btn'></div></div>";
		} 
	}

	  