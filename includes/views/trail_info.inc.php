<!--api key texteditor 6hi1dybxyo7ndy05dqzdztbn0l40e8vaufi8vpu5q52e7nz8

 -->
<?php
	$trail_input = "

			<input name='trail_name_value' id='trail_name' placeholder=' Företagsnamn'>
			<input name='org_name_value' id='org_no' placeholder=' xxxxxx-xxxx'>
			<div id='attributes_container'>
			<select id='attributes_selector' placeholder='Välj ett attribut' style='width:300px;'>			
			</select>
			<div id='att_add_button'></div>
			</div>
			
			<input type='hidden' name='trail_creation_date_value' id='trail_creation_date' value='".date('Y-m-d H:i:s')."'> 
			<textarea name='trail_info_value' id='trail_info' placeholder='Ange information om led' ></textarea>
			<input type='hidden' name='trail_creation_date_value' value='value='".date('Y-m-d H:i:s')."'>
			
				


	";

	echo $trail_input;