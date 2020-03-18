<!DOCTYPE html>
<html>

	<head>
		<title>
			CSV
		</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
		</script>
	</head>

	<body style="text-align:center;">

		<table width="100%">
			<thead>
			<tr>
				<th width="5%">1</th>
				<th width="40%">2</th>
				<th>3</th>
				<th>4</th>
				<th>5</th>
				<th>6</th>
				<th>7</th>
				<th>8</th>
				<th>9</th>
				<th>10</th>
				<th>11</th>
				<th>12</th>
			</tr>
			</thead>
			<tbody id="tbBody">

			</tbody>
			
		</table>
		<!-- Script to use ajax() method to 
        add text content -->
		<script>
			$(document).ready(function () {
				$.ajax({
					url: "http://localhost:3002/cores",
					type: "GET",
					dataType: "json",
					success: function (response) {
						var html = ''
						for (let i = 0; i < response.length; i++) {
							html += `<tr>`
							for (let j = 0; j < response[i].length; j++) {
								html += `<td>`+ response[i][j] +`</td>`
							}
							html += `</tr>`

						}
						$("#tbBody").empty().html(html)
					}
				});
			}); 
		</script>
	</body>

</html>