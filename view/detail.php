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
						for (let h = 0; h < response.length; h++) {
							html +=`
								<h1><b>`+ response[h].name.split("-")[0] +`</b></h1>
								<input type="hidden" class="parameter" size="100" value="`+ response[h].parameter +`">
							`
							for (let i = 0; i < response[h].key_biners.length; i++) {
								
								html += `
								<form name="updateForm-`+ response[h].key_biners[i].id +`" id="updateForm-`+ response[h].key_biners[i].id +`">
								<table width="100%" border="1">
									<tr>
										<td width="5%">`+ parseInt(i+1, 10) +`</td>
										<td width="30%">
											`+ response[h].key_biners[i].name +`
										</td>
										`;
										let biner = response[h].key_biners[i].biner.split(",")
										for (let j = 0; j < biner.length; j++) {
											html +=`
											<td>`+ biner[j] +`</td>`
										}
										html +=`
										<td>`+ biner.length +` Projects</td>
									<tr/>
								</table>
								</form>
								`							
							}
						}

						$("#dataSplit").html(html)
					}
				});
			}); 
		</script>
	</body>

</html>