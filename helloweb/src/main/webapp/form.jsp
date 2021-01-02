<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='/helloweb/join' method="post"> <!-- 바디에 숨겨서 보냄 -->
	
		이메일: <input type='text' name='email' value='' />
		<br/><br/>
		비밀번호: <input type='password' name='password' value=''>
		<br/><br/>
		생년:
		<select name='birthYear'>
			<option value='1994'>1994년</option>
			<option value='1995'>1995년</option>
			<option value='1996'>1996년</option>
			<option value='1997'>1997년</option>
		</select>		
		<br/><br/>
		<!-- value=''에 표기된 값이 실제 데이터이다. -->
		
		성별: 
		여<input type='radio' name='gender' value='female' checked='checked' />
		남<input type='radio' name='gender' value='male'/>
		<br/><br/>
		<!-- 배타적 선택이 되어야 함. 만약 gender1, gender2 이렇게 하면 배타적 선택이 
			되지 않는다. 모두 선택됨. checked는 디폴트 선택된다는 뜻임 -->
			
		취미:
		코딩 <input type='checkbox' name='hobby' value='coding' />
		수영 <input type='checkbox' name='hobby' value='swimming' />
		낚시 <input type='checkbox' name='hobby' value='fishing' />
		요리 <input type='checkbox' name='hobby' value='cooking' />
		<br/><br/>		<!-- 멀티 값이 도리수 있기 때문에 배열로 받아야 함 -->
		
		내 소개 <!-- 태그 안의 내용 그대로 나온다. 개행, 띄어쓰기까지. -->
		<textarea name='desc'>
		afdfsdaf
		</textarea>
		<br/><br/>
		
		<input type='submit' value='가입'/>
	</form>
</body>
</html> 