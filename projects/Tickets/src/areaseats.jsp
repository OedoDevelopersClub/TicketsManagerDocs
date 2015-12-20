<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>座席一覧</title>
<link rel="stylesheet" type="text/css" href="./css/tickets.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
<h2>座席一覧</h2>

<script>
$(
	setSeatList(seatfloor,subarea);
)
function setSeatList(seatfloor,subarea) {
	$.getJSON("./tickets",filter:{seatfloor:seatfloor, subarea: subarea}, function(json) {
	setSeatList(json)
	})
}
</script>
</body>
</html>
