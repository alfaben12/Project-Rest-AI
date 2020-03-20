<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form id="formData">
        <input type="file" id="csv" required>
        <br/>
        <button>Submit</button>
    </form>
    <script>
			$(document).ready(function () {
                $("#formData").submit(function(event) {
                    var form_data = new FormData();
                    form_data.append('csv', $("#csv").prop('files')[0]);

                    $.ajax({
                        url: "http://localhost:3002/cores/csv",
                        type: "POST",
                        dataType: "json",
                        data: form_data,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (response) {
                            window.location = 'http://localhost:5001/edit.php?uuid='+ response.parameter
                        }
                    });
                    event.preventDefault();
                })
			}); 
		</script>
</body>
</html>