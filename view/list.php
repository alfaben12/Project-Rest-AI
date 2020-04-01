<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>list</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form id="formData">
        <input type="date" name="start" required>
        <input type="date" name="end" required>
        <br/>
        <button>Submit</button>
    </form>
    <br/>
    <table width="30%" border="1">
        <thead>
            <tr>
                <th width="10%">No</th>
                <th>File</th>
                <th width="20%">Total Row</th>
                <th width="20%">Edit</th>
                <th width="20%">Detail</th>
            </tr>
        </thead>
        <tbody id="list">

        </tbody>
    </table>
    <script>
			$(document).ready(function () {
                $("#formData").submit(function(event) {
                    $.ajax({
                        url: "http://localhost:3002/reports/date_range",
                        type: "GET",
                        dataType: "json",
                        data: $(this).serialize(),
                        cache: false,
                        success: function (response) {
                            let html = ``;

                            for (let i = 0; i < response.length; i++) {
                                html += `
                                <tr>
                                    <td>`+ parseInt( i+1, 10) +`</td>
                                    <td>`+ response[i].name.split("-")[0] +`</td>
                                    <td>`+ response[i].key_biners.length +`</td>
                                    <td><a href="http://localhost:5001/edit.php?uuid=`+ response[i].parameter +`">Edit</a></td>
                                    <td><a href="http://localhost:5001/detail.php?uuid=`+ response[i].parameter +`">Detail</a></td>
                                </tr>
                                `
                            }

                            $("#list").empty().html(html)
                        }
                    });
                    event.preventDefault();
                })
			}); 
		</script>
</body>
</html>