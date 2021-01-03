<% page import = "com.bitacademy.guestbook.vo.GuestbookVo" %>
<!-- Dao도 입포트 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	new GuestbookVo vo = new GuestbookVo();
	new GuestbookDao().delete(vo);
	
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new GuestbookDao().delete(vo);
	response.sendRedirect(request.getContextPath());

%>
