<?php

  $sql_att = "SELECT * FROM attributes WHERE attributeID < 13";
  $att_result = mysqli_query($conn, $sql_att);
  while ($row_att = $att_result->fetch_assoc())
  {
      $att_name = $row_att['griName'];
      echo "<div class='attribute_tiles'>" . $row_att['griName'] . "<div id='edit_btn'></div></div>";
  } 
 
  