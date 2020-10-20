<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 상세</title>
</head>
<body>


	<h1>게시물 상세</h1>


	<div>번호 : ${article.id }</div>
	<div>작성날짜 : ${article.regDate }</div>
	<div>수정날짜 : ${article.updateDate }</div>
	<div>제목 : ${article.title}</div>
	<div>내용 ${article.body}</div>
	<hr />
	<div>
		<a href="list">리스트</a> <a
			onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
			href="doDelete?id=${article.id}">삭제</a> <a
			href="modify?id=${article.id}">수정</a>
	</div>



</body>
</html>