<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="title" value="회원 로그인 아이디 찾기" />
<%@ include file="../part/head.jspf"%>

	<script>
		var findLoginIdFormSubmitDone = false;

		function findLoginIdFormSubmit(form) {
			if (findLoginIdFormSubmitDone) {
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

			form.email.value = form.email.value.trim();
			if (form.email.value.length == 0) {
				alert('로그인 이메일을 입력해주세요')
				form.email.focus();
				return;
			}
			form.submit();
			findLoginIdFormSubmitDone = true;
		}
	</script>

	

	<form action="doFindLoginId" onsubmit="findLoginIdFormSubmit(this); return false;">
<div>
			이름 : <input type="text" maxlength="30" placeholder="이름을 입력해주세요" name="name" />
		</div>
		<div>
			이메일 : <input type="email" maxlength="50" placeholder="이메일을 입력해주세요" name="email" />
		</div>
		<div>
			찾기 : <input type="submit" value="찾기" />
		</div>
	</form>
	
	<div>
		<a href="../article/list">리스트</a>
	</div>
	<hr />


<%@ include file="../part/foot.jspf"%>