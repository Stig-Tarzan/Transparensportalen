<?php
	include '../bootstrap.php';
	session_start();


	if (isset($_POST['attributeData'])) 
	{
		$attributeData = $_POST['attributeData'];
		$attributeSource = $_POST['attributeSource'];

		

		$sql= "INSERT INTO 'attribute_orgs_sites'('orgID', 'attributeID', 'siteID', 'attributeData') VALUES ([value-1],[value-2],[value-3],[value-4])";
		$result = mysqli_query($conn, $sql);

		if (!$result) 
		{
			echo "Failed delete";
		}
		else
		{
			echo "Successful delete";
		}
	}