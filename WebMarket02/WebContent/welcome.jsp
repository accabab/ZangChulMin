<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<%@include file="menu.jsp" %>

	<%!
		String greeting = "웹 쇼핑몰에 오신걸 환영합니다"; 
		String tagline = "Welcome Web Market";
	%>
	<%
		response.setIntHeader("Refresh", 5);
		Date day = new java.util.Date();
		
		String am_pm;
		int horu = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		
		if (horu/12 == 0){
			am_pm = "오전";
		} else{
			am_pm = "오후";
			horu = horu-12;
		}
		
		String ct = am_pm+"-"+ horu+":"+minute+":"+second;
	%>
	
	<h1><%=greeting%></h1>
	<h3><%=tagline %></h3>
	
	
	<%="현재 접속시간 :"+ct %><br/>
	
	<c:out value="Hello world"></c:out><br/>
	<c:forEach var="k" begin="1" end="10" step="2">
		<c:out value="${k}"/>
	</c:forEach>
	

<%@include file="footer.jsp" %>

</body>
</html>