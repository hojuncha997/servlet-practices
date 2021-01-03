﻿<%@page import="com.bitacademy.emaillist.vo.EmaillistVo"%>
<%@page import="com.bitacademy.emaillist.dao.EmaillistDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%
	List<EmaillistVo> list = new EmaillistDao().findAll();
	//dao 객체를 생성해서, 그 안의 메소드를 통해 처리한 값을, vo 리스트에 담는다.
%>
<!DOCTYPE html>

<%-- <%=list.size() % --%>> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email List</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	
	<%/* for(int i = 0; i < list.size(); i++) { 
		EmaillistVo vo = list.get(i); */
		
		for(EmaillistVo vo : list) {
	%>
	<!-- 메일정보 리스트 -->
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right>First name: </td>
			<td><%=vo.getFirstName() %></td>
		</tr>
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="110"><%=vo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%=vo.getEmail() %></td>
		</tr>
	</table>
	<br>
	<% 
		}
	%>
	<p>
		<a href ='/emaillist01/form.jsp'>추가메일 등록</a>
	</p>
	<br>
</body>
</html>