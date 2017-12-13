<?php
	include '../bootstrap.php';
	session_start();


	if (isset($_POST['attributeData'])) 
	{
		$attributeData = $_POST['attributeData'];
		$attributeSource = $_POST['attributeSource'];
		$selected_attribute = $_POST['selectedAttribute'];
		$org_name = $_POST['orgName'];

		$sql_id_fetch= "SELECT * FROM attributes WHERE griName = '$selected_attribute'";
		$result = mysqli_query($conn, $sql_id_fetch);
		$row = mysqli_fetch_assoc($result);
		$selected_attribute_id = $row['attributeID'];	



		$sql_org_id_fetch= "SELECT * FROM org_profile WHERE orgName = '$org_name'";
		$result = mysqli_query($conn, $sql_org_id_fetch);
		$row = mysqli_fetch_assoc($result);
		$selected_org_id = $row['orgID'];	

		echo $org_name . " ";
		echo $selected_org_id . " ";
		echo $selected_attribute_id . " ";
		echo $attributeData . " ";
		echo $attributeSource . " ";

		$sql= "INSERT INTO attribute_orgs_sites(orgID, attributeID, siteID, attributeData, griCatID, subCatID, source) 
		VALUES ('$selected_org_id','$selected_attribute_id','1','$attributeData','1','1', '$attributeSource')";
		$result = mysqli_query($conn, $sql);

		if (!$result) 
		{
			echo "Failed";
		}
		else
		{
			echo "Attribute saved";
		}
	}