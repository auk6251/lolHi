<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="title" value="게시물 상세페이지" />
<%@ include file="../part/head.jspf"%>


<div>번호 : ${article.id }</div>
<div>작성날짜 : ${article.regDate }</div>
<div>수정날짜 : ${article.updateDate }</div>
<div>제목 : ${article.title}</div>
<div>내용 : ${article.body}</div>
<div>작성자 : ${article.extra.writer}</div>
<hr />
<div>
	<a href="list">리스트</a> <a
		onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
		href="doDelete?id=${article.id}">삭제</a> <a
		href="modify?id=${article.id}">수정</a>
</div>

<h2>댓글 작성</h2>
<form action="/usr/reply/doWrite">

	<input type="hidden" name="relTypeCode" value="article" /> <input
		type="hidden" name="relId" value="${param.id }" />
	<div>
		<textarea name="body" rows="10" placeholder="내용"></textarea>
	</div>

	<div>
		<input type="submit" value="작성" />
	</div>
</form>

<h2>댓글 리스트</h2>


<c:forEach items="${replies}" var="reply">
	<div>번호 : ${reply.id }</div>
	<div>작성날짜 : ${reply.regDate }</div>
	<div>수정날짜 : ${reply.updateDate }</div>
	<div>내용 : ${reply.body}</div>
	<div>작성자 : ${reply.extra.writer}</div>
	<div>
		<a href="/usr/reply/doDelete?id=${reply.id}">삭제</a>
	</div>
	<hr />
	<hr />
</c:forEach>

<%@ include file="../part/foot.jspf"%>