<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
</head>

<style>
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: red; line-height: 140px; color: black;}
</style>

<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>Welcome to Kiki's Management Service</h1>
		</div>
		<div>
			<p><img src="RESOURCES/img/kiki.jpg" width="650" height="350" alt="kiki">
			<p>
			<%
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();
				int min = day.getMinutes();
				int sec = day.getSeconds();
				if(hour/12 == 0){
					am_pm = "AM";
				}else{
					am_pm = "PM";
					hour = hour-12;
				}
				String ct = hour + ":" + min + ":" + sec + ":" + am_pm;
				out.println("現在の時刻 : " + ct);
				response.setIntHeader("Refresh", 5);
			%>
		</div>
	</div>
<jsp:include page="footer.jsp" />
</body>
</html>