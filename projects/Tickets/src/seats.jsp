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
<div style="top:50px;left:50px;position:absolute;">
<img src="./img/concert.png" width="515px" height="724px" />
<div id="floor1_1" class="seatarea" style="top:75px;left:150px;width:75px;height:180px;position:absolute;"></div>
<div id="floor1_2" class="seatarea" style="top:75px;left:230px;width:55px;height:180px;position:absolute;"></div>
<div id="floor1_3" class="seatarea" style="top:75px;left:290px;width:75px;height:180px;position:absolute;"></div>
</div>
<script>
function clickFunc(seatfloor, subarea) {
	var param = "seatfloor=" + seatfloor + "&subarea=" + subarea;
	location.href = "./areaseats.jsp?" + param;
}

$(function(){
	$("#floor1_1").click(function(){
		clickFunc(1,1);
	});
	$("#floor1_2").click(function(){
		clickFunc(1,2);
	});
	$("#floor1_3").click(function(){
		clickFunc(1,3);
	});

});


</script>
</body>
</html>
