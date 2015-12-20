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
<%
	out.println("<h2>座席("+ request.getParameter("seatfloor") + "-" +  request.getParameter("subarea") + ")</h2>");
%>
<script>
$(
//	setSeatList(seatfloor,subarea);
	var $label_y = $("div").attr({
		class: "label_y"
	}).css({
		width: "50px",
		height: "50px",
		border: "solid 1px black"
	});
	$("body").append($label_y);
)
function setSeatList(seatfloor,subarea) {
	$.getJSON("./tickets",filter:{seatfloor:seatfloor, subarea: subarea}, function(json) {
		var $label_y = $("div").attr({
			class: "label_y"
		}).css({
			width: "50px",
			height: "50px",
			border: "solid 1px black"
		}));		
	});
}
</script>
</body>
</html>
