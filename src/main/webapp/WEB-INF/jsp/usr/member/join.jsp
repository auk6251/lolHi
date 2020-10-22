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
	<script>
		var joinFormSubmitDone = false;

		function joinFormSubmit(form) {
			if (joinFormSubmitDone) {
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
			form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
			if (form.loginPwConfirm.value.length == 0) {
				alert('로그인 비밀번호 확인을 입력해주세요')
				form.loginPwConfirm.focus();
				return;
			}
			if (form.loginPw.value != form.loginPwConfirm.value) {
				alert('비밀번호가 일치 하지 않습니다.')
				form.loginPwConfirm.focus();
				return;
			}

			form.name.value = form.name.value.trim();
			if (form.name.value.length == 0) {
				alert('로그인 아이디를 입력해주세요')
				form.name.focus();
				return;
			}
			form.submit();
			joinFormSubmitDone = true;
		}
	</script>

	<h1>회원가입</h1>

	<form action="doJoin" onsubmit="joinFormSubmit(this); return false;">
		<div>
			아이디 : <input type="text" placeholder="아이디을 입력해주세요" name="loginId" />
		</div>
		<div>
			비밀번호 : <input type="password" placeholder="비밀번호을 입력해주세요"
				name="loginPw" />
		</div>
		<div>
			비밀번호 확인 : <input type="password" placeholder="비밀번호 확인을 입력해주세요"
				name="loginPwConfirm" />
		</div>
		<div>
			이름 : <input type="text" placeholder="이름을 입력해주세요" name="name" />
		</div>
		<div>
			회원가입 : <input type="submit" value="가입" />
		</div>
	</form>
	<div>
		<a href="list">리스트</a>
	</div>
	<hr />

</body>
</html>