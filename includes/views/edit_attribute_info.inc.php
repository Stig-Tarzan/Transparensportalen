<?php
	include '../bootstrap.php';
	session_start();


	 $selected_att = mysqli_real_escape_string($conn,$_POST['selected_att']);

	 echo "<div id='overlay'><div id='edit_att'><p>" .$selected_att. "<div id='inner_edit'>Quantity<input id='attributeData'></input><list><label>source</label><input id='attributeSource'></input>

	 	<button id='save_attribute' class='button'>Save</button>
		<button id='cancel_save_attribute'class='button'>Cancel</button>

	 	</div></div></div>";
