<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" session="false" %>

<!doctype html>
<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	
	function browserCheck(){
		var agents = navigator.userAgent;
		var lowerAgent = agents.toLowerCase();
		console.log("Original : "+agents);
		console.log("LowerCase : "+lowerAgent);
		$("#textA").val(lowerAgent);
		return lowerAgent;
	}
	
	
	
	$(document).ready(function(){
		$(document).keydown(function(){
		
			var userAgent = browserCheck();
			console.log(userAgent);
			
			var firstEvent;
			var secondEvent;
		
			var keyCodeVal = event.keyCode;
			console.log(keyCodeVal);
			
			if((userAgent.indexOf("trident")>-1)||(userAgent.indexOf("mise")>-1)){
				console.log("userAgent is IE\r\n"+userAgent);
				$("#testInput").val("IE");
			}else if(userAgent.indexOf("safari")>-1){
				if(userAgent.indexOf("chrome")>-1){
					if(userAgent.indexOf("edge")>-1){
						console.log("userAgent is edge\r\n"+userAgent);
						$("#testInput").val("edge");
					}else{
						console.log("userAgent is chrome\r\n"+userAgent);
						$("#testInput").val("chrome");
					}
				}else{
					console.log("userAgent is Safari\r\n"+userAgent);
					$("#testInput").val("Safari");
				}
			}else if((userAgent.indexOf("opr")>-1)||(userAgent.indexOf("opera")>-1)){
				console.log("userAgent is Opera\r\n"+userAgent);
				$("#testInput").val("Opera");
			}else if(userAgent.indexOf("firefox")>-1){
				console.log("userAgent is firefox\r\n"+userAgent);
				$("#testInput").val("firefox");
			}else{
				console.log("What the hell is this userAgent??");
				$("#testInput").val("What the hell is this userAgent??");
			}
			
			if(keyCodeVal == 8){
				return false;
			}
		});
	
	});
	</script>
</head>
<body>
<h1>
	Hello world! It's Here ?
</h1>

<input id="testInput"/>
<textarea rows="3" cols="100" id="textA"></textarea>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
