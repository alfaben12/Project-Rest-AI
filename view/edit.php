<!DOCTYPE html>
<html>

	<head>
		<title>
			jQuery ajax() Method
		</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>

	<body style="text-align:center;">

		
			<div id="dataSplit">

			</div>
			
			<button type="button">Update</button>
		<!-- Script to use ajax() method to 
        add text content -->
		<script>
			$(document).ready(function () {
				$.ajax({
					url: "http://localhost:3002/cores/csv/<?php echo $_GET['uuid'] ?>",
					type: "GET",
					dataType: "json",
					success: function (response) {
						let html = ''
						for (let i = 0; i < response.length; i++) {
							html += `
							<table width="100%">
								<tr>
									<td width="30%"><input type="text" name="name" size="100" value="`+ response[i].name +`"></td>
									`;
									let biner = response[i].biner.split(",")
									for (let j = 0; j < biner.length; j++) {
										html +=`
										<td><input type="number" name="biner" size="5" value="`+ biner[j] +`"></td>`
									}
									html +=`
									<td>`+ biner.length +` Projects</td>
								<tr/>
							</table>
							`							
						}

						$("#dataSplit").html(html)
					}
				});
			}); 
		</script>
	</body>

</html>