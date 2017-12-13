<?php
	include '../bootstrap.php';
	session_start();


	 $selected_att = mysqli_real_escape_string($conn,$_POST['selected_att']);

	 echo "<div id='edit_att'><p>" .$selected_att. "<div id='inner_edit'>Quantity<input></input><list><label>source</label><input></input></div></div>";
