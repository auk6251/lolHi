<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 리스트</title>
</head>
<body>


	<h1>게시물 리스트</h1>
	<div>
		<a href="/usr/member/join">회원가입</a> <a href="/usr/member/login">로그인</a>
	</div>
	<br />
	<div>총 게시물 수 :${totalCount}</div>


	<br />

	<c:forEach items="${articles}" var="article">
		<div>
			번호 : <a href="detail?id=${article.id}">${article.id}</a>
		</div>
		<div>
			제목 : <a href="detail?id=${article.id}">${article.title}</a>
		</div>
		<div>
			작업 : <a onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
				href="doDelete?id=${article.id}">삭제</a> <a
				href="modify?id=${article.id}">수정</a>
		</div>
		<hr />
	</c:forEach>
	<div>
		<a href="write">글쓰기</a>
	</div>

	<style>
.selected {
	color: red;
}
</style>

	<h2>페이지</h2>
	<div>
		<c:set var="goFirstBtnNeedShow" value="${page>pageMenuArmSize+1}" />

		<c:set var="goLastBtnNeedToShow" value="true" />

		<c:if test="${goFirstBtnNeedShow}">
			<a href="?page=1">◀</a>
		</c:if>

		<c:forEach var="i" begin="${pageMenuStart}" end="${pageMenuEnd}">
			<c:set var="className" value="${i == page ? 'selected' : '' }" />
			<a class="${className}" href="?page=${i}">${i}</a>

			<c:if test="${i == totalPage}">
				<c:set var="goLastBtnNeedToShow" value="false" />
			</c:if>
		</c:forEach>

		<c:if test="${goLastBtnNeedToShow}">
			<a href="?page=${totalPage }">▶</a>
		</c:if>

	</div>
</body>
</html>




