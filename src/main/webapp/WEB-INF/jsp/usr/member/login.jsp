<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="title" value="로그인" />
<%@ include file="../part/head.jspf"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>

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
				
			form.loginPw.value = sha256(form.loginPw.value);
			
			form.submit();
			LoginFormSubmitDone = true;
		}
	</script>

	

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
		<a href="../article/list">리스트</a>
	</div>
	<hr />


<%@ include file="../part/foot.jspf"%>