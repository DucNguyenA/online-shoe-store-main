		<?php
		include("E:\New folder\htdocs\online shoe store\onl shoe\database\dbconn.php");
		
		$t_id = $_GET['id'];
		
		$conn->query("UPDATE transaction SET order_stat = 'Cancelled' WHERE transaction_id = '$t_id'") or die(mysqli_error());
								
		header("location: transaction.php");	
		
		?>