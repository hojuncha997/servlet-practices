﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email List</title>
</head>
<body>
	<h1>메일 리스트 가입</h1>
	<p>
		메일 리스트에 가입하려면,</br>
		아래 항목을 기입하고 submit 버튼을 클릭하세요.
	</p>
	<form action="add.jsp" method="post"> <!-- data를 바디에 넣어서 보내줘 -->
	    First name: <input type="text" name="firstName" value="" >
	    <br/><br/>
	    
	    Last name: <input type="text" name="lastName" value="">
	    <br/><br/>
	   
	    Email address: <input type="text" name="email" value="">
	    <br/><br/>
	    
	    <input type="submit" value="등록">
	</form>
	<br>
	<p>
		<a href='/emaillist01'>리스트 바로가기</a>
		<!-- /emaillist01/index.jsp가 맞지만 index.jsp가 웰컴파일로 되어있기 때문에 생략 -->
	</p>
</body>
</html>