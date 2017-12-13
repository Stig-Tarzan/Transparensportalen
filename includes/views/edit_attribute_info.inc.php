<?php
	include '../bootstrap.php';
	session_start();


	 $selected_att = mysqli_real_escape_string($conn,$_POST['selected_att']);

	 echo "<div id='overlay'><div id='edit_att'><div id='selected_attribute'>" .$selected_att. "</div><div id='inner_edit'>Quantity<input id='attributeData'></input><list><label>source</label><input id='attributeSource'></input>

	 	<button id='save_attribute' class='button'>Save</button>
		<button id='cancel_save_attribute'class='button'>Close</button>

	 	</div></div></div>";
