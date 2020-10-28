<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="title" value="회원정보 수정" />
<%@ include file="../part/head.jspf"%>

<form action="doModify" method="POST">
	
	<div>번호 : ${loginedMember.id }</div>
	<div>가입날짜 : ${loginedMember.regDate }</div>
	<div>아이디 : ${loginedMember.loginId }</div>
	<div>이름 : <input type="text" maxlength="30" placeholder="이름을 입력하세요"  name = "name" value=" ${loginedMember.name}"/></div> 


	<div>
		수정 : <input type="submit" value="수정" />
	</div>

</form>
<div>
	<a href="list">리스트</a>
</div>
<hr />
<%@ include file="../part/foot.jspf"%>