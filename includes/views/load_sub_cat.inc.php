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
		
		  $sql_env = "SELECT COUNT(attributeID) as no_att_total FROM attributes,sub_cat WHERE sub_cat.griCatID = 1 AND sub_cat.subCatID = attributes.subCatID" ;
		  $env_result = mysqli_query($conn, $sql_env);
		  $row_env_att = mysqli_fetch_assoc($env_result);

		  $sql_env_this = "SELECT COUNT(attributeID) as no_att FROM `attribute_orgs_sites` WHERE griCatID = 1" ;
		  $env_result_this = mysqli_query($conn, $sql_env_this);
		  $row_env_att_this = mysqli_fetch_assoc($env_result_this);

		  $env_total = $row_env_att['no_att_total'];
		  $env_curr = $row_env_att_this['no_att'];


		echo "<div id='sub_cat_container'>";
		$sql_att = "SELECT * FROM sub_cat WHERE griCatID = '$griCatID'";
		$att_result = mysqli_query($conn, $sql_att);
		while ($row_att = $att_result->fetch_assoc())
		{

			if ($row_att['subCatName'] == "Water") 
			{
				$att_name = $row_att['subCatName'];
		    	echo "<div class='attribute_tiles'>" . $row_att['subCatName'] . "<label class = att_stats><p>". $env_curr . "/". $env_total . "<p/></label></div>";
			}
			else
			{
				$att_name = $row_att['subCatName'];
		    	echo "<div class='attribute_tiles'>" . $row_att['subCatName'] . "<label class = att_stats><p> 0/0 <p/></label></div>";
		    }

		} 
		if (isset($_SESSION['user_id'])) 

			echo "</div>";
		
		
	}

	  