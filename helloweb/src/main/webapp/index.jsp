<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no"); //값을 받음
	int number = (no != null && no.matches("\\d*")) ? Integer.parseInt(no) : -1;
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hellow web - <%=number %></h1>
</body>
</html>