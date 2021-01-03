<%@page import="com.bitacademy.emaillist.dao.EmaillistDao"%>
<%@page import="com.bitacademy.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//request는 jsp에 내장돼 있음.받은 값이 변수에 저장됨.
	request.setCharacterEncoding("utf-8");
	String firstName = request.getParameter("firstName"); 
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	//이 데이터들을 vo에 넣어서 dao에게 줄 것이다.
	
	EmaillistVo vo  = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	response.sendRedirect("/emaillist01");
	//캐쉬에 남아있기 때문에 계속 트랜잭션 될 수 있음. 이를 방지하기 위해 리다이렉트해줌.
%>
<%-- 사실 이 밑의 부분은 필요 없음. 이 위에서 끝나기 때문임.
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록 성공</h1>
	
	<%=firstName %> <br>
	<%=lastName %> <br>
	<%=email %> <br>
	값을 확인하기 위해 넣어줬던 코드였음. 잘 나오니 주석처리.
	
</body>
</html> --%>