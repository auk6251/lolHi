<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
	<script>
		var LoginFormSubmitDone = false;

		function LoginFormSubmit(form) {
			if (LoginFormSubmitDone) {
				alert('처리중 입니다.');
				return;
			}
			form.loginId.value = form.loginId.value.trim();
			if (form.loginId.value.length == 0) {
				alert('로그인 아이디를 입력해주세요')
				form.loginId.focus();
				return;
			}
			form.loginPw.value = form.loginPw.value.trim();
			if (form.loginPw.value.length == 0) {
				alert('로그인 비밀번호를 입력해주세요')
				form.loginPw.focus();
				return;
			}
				

			form.submit();
			LoginFormSubmitDone = true;
		}
	</script>

	<h1>로그인</h1>

	<form action="doLogin" onsubmit="LoginFormSubmit(this); return false;">
		<div>
			아이디 : <input type="text" placeholder="아이디을 입력해주세요" name="loginId" />
		</div>
		<div>
			비밀번호 : <input type="password" placeholder="비밀번호을 입력해주세요"
				name="loginPw" />
		</div>
		
		<div>
			로그인 : <input type="submit" value="로그인" />
		</div>
	</form>
	<div>
		<a href="list">리스트</a>
	</div>
	<hr />

</body>
</html>