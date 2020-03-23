<!DOCTYPE html>
<html>

	<head>
		<title>
			jQuery ajax() Method
		</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>

	<body style="text-align:center;">

				<button type="button" id="updateButton">Update</button>
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
						let keyStorage = []
						for (let h = 0; h < response.length; h++) {
							html +=`
								<h1><b>`+ response[h].name.split("-")[0] +`</b></h1>
								<input type="hidden" class="parameter" size="100" value="`+ response[h].parameter +`">
							`
							for (let i = 0; i < response[h].key_biners.length; i++) {
								keyStorage.push(response[h].key_biners[i].id)
								
								html += `
								<form name="updateForm-`+ response[h].key_biners[i].id +`" id="updateForm-`+ response[h].key_biners[i].id +`">
								<table width="100%">
									<tr>
										<td width="5%">`+ parseInt(i+1, 10) +`</td>
										<td width="30%">
											<input type="hidden" name="id" size="100" value="`+ response[h].key_biners[i].id +`">
											<input type="text" name="name" size="100" value="`+ response[h].key_biners[i].name +`">
											<input type="hidden" name="parameter_biner" size="100" value="`+ response[h].key_biners[i].parameter +`">
										</td>
										`;
										let biner = response[h].key_biners[i].biner.split(",")
										for (let j = 0; j < biner.length; j++) {
											html +=`
											<td><input type="number" name="biner" size="5" value="`+ biner[j] +`"></td>`
										}
										html +=`
										<td>`+ biner.length +` Projects</td>
									<tr/>
								</table>
								</form>
								`							
							}
						}

						localStorage.setItem("idKeyBiner", keyStorage.toString());
						$("#dataSplit").html(html)
					}
				});

				$("#updateButton").click(function(event) {
					let idKeyBinerArray = localStorage.getItem("idKeyBiner").split(",");
					
					var parameter = $('.parameter').length;
					var parameter_result = [];
					for (i = 0; i < parameter; i++) { 
						parameter_result.push(new Array($('.parameter').eq(i).val()));
					}

					let formArray = []
					for (let i = 0; i < idKeyBinerArray.length; i++) {
						let singleFormArray = $("#updateForm-"+ idKeyBinerArray[i]).serializeArray()

						let biner = []
						let formArrayBiner = singleFormArray.slice(3)

						for (let j = 0; j < formArrayBiner.length; j++) {
							biner.push(formArrayBiner[j].value)		
						}

						let data = {
							id: singleFormArray[0].value,
							name: singleFormArray[1].value,
							parameter: singleFormArray[2].value,
							biner: biner.toString()
						}
						formArray.push(data)
					}

					let binerWithParameter = []
					for (let h = 0; h < parameter_result.length; h++) {
						let allBinerArray = []
						for (let i = 0; i < idKeyBinerArray.length; i++) {
							let singleFormArray = $("#updateForm-"+ idKeyBinerArray[i]).serializeArray()
							if (parameter_result[h][0] == singleFormArray[2].value) {
								let formArrayBiner = singleFormArray.slice(3)
								let biner = []
								for (let j = 0; j < formArrayBiner.length; j++) {
									biner.push(formArrayBiner[j].value)		
								}
								allBinerArray.push(biner)
							}
						}

						let array_biner = allBinerArray, restructured_biner_sum = array_biner.reduce((r, a) => a.map((b, i) => parseInt((r[i] || 0)) + parseInt(b)), []);
						
						let databinerWithParameterTemp = {
							parameter: parameter_result[h][0],
							biner: restructured_biner_sum.toString()
						}

						binerWithParameter.push(databinerWithParameterTemp)
					}

					$.ajax({
						url: "http://localhost:3002/cores/csv",
						type: 'PUT',
						data: {
							key_biner: JSON.stringify(formArray),
							sum: JSON.stringify(binerWithParameter),
						},
						cache: false,
						beforeSend: function() {},
						success: function(response) {
						},
						error: function(response, textStatus, errorThrown) {
							console.log('error')
						},
						complete: function() {
							console.log('complete')
						}
					});
					event.preventDefault();
				});
			}); 
		</script>
	</body>

</html>