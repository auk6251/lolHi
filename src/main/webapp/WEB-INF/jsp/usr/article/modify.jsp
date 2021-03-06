<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="title" value="${board.name} 게시물 수정" />
<%@ include file="../part/head.jspf"%>

<form action="doModify" method="POST">
	<input type="hidden" name="id" value="${article.id }" />
	<div>번호 : ${article.id }</div>
	<div>작성날짜 : ${article.regDate }</div>
	<div>수정날짜 : ${article.updateDate }</div>
	<div>
		제목 : <input type="text" maxlength="30"
			placeholder=" ${article.title }" name="title" />
	</div>
	<div>
		내용 : <input type="text" maxlength="30" placeholder=" ${article.body }"
			name="body" />
	</div>
	<div>
		수정 : <input type="submit" value="수정" />
	</div>

</form>
<div>
	<a href="list">리스트</a>
</div>
<hr />
<%@ include file="../part/foot.jspf"%>