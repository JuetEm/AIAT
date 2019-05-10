<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link href="css/cover.css" rel="stylesheet"> -->

<!-- Custom CSS -->
<link href="css/aiat-main-style.css" rel="stylesheet" type="text/css" >

<title>ARTIFICIAL INTELLIGENCE ART THERAPY</title>
<script type="text/javascript">

	var date = "";

	function realtimeClock(){
		var test = getTimeStamp();
// 		console.log("test : "+test);
		setTimeout("realtimeClock()", 1000);
		$("#spanInput").text(test);
	}
	
	function getTimeStamp(){
		date = new Date();
		
// 		console.log("date : "+date);
		
		var s = 
		leadingZeros(date.getFullYear(), 4)+'-'+
		leadingZeros(date.getMonth()+1, 2)+'-'+
		leadingZeros(date.getDate(), 2)+' '+
		
		leadingZeros(date.getHours(), 2)+':'+
		leadingZeros(date.getMinutes(), 2)+':'+
		leadingZeros(date.getSeconds(), 2);
		
// 		console.log("s : "+s);
		return s;
	}
	
	function leadingZeros(n, digits){
		var zero = '';
		n = n.toString();
		
		if(n.length < digits){
			for(i=0; i<digits-n.length; i++){
				zero += '0';
			}
		}
		return zero+n;
	}
	
	
</script>
</head>
<body class="container" onload="realtimeClock()">
	<div class="jumbotron">
		<div>
			<h6 id="logHTag">Log in Time : ${serverTime}.</h6>	
			<h1>Artificial Intelligence Art Therapy</h1>
		</div>
		<div>
			<div>
				<p>CurrentTime : <span id="spanInput">time test</span></p>
			</div>
		</div>
	</div>
	
	<div>
		<form name="imgForm">
			<div id="img-container" >
				<img id="imgTag" class="img-responsive img-rounded" alt="your image" src="image/UNADJUSTEDNONRAW_thumb_1053.jpg" >
			</div>
			<div id="input-container" class="filebox">
				<input type="file" id="imgInput"/>
			</div>
		</form>
	</div>
	<script src="js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="js/aiat-function.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
// 			testAlert();
			$('#imgInput').change(function(){
				previewIMG(this);
			});
		});
	</script>
</body>
</html>