<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>



	<h1>회원가입</h1>

	<form action="doJoin">
	<div>아이디 : <input type="text"  placeholder="아이디을 입력해주세요" name="loginId"/></div>
	<div>비밀번호 : <input type="password"  placeholder="비밀번호을 입력해주세요" name="loginPw" /></div>
	<div>이름 : <input type="text"  placeholder="이름을 입력해주세요" name="name" /></div>
	<div>회원가입 : <input type="submit" value="가입" /></div>
	</form>
		<div>
		<a href="list">리스트</a>
	</div>
	<hr />

</body>
</html>