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

	<c:forEach items="${articles}" var="article">
		<div>번호 : ${article.id }</div>
		<div>작성날짜 : ${article.regDate }</div>
		<div>수정날짜 : ${article.updateDate }</div>
		<div>제목 : ${article.title}</div>
		<div>내용 ${article.body}</div>
		<hr />
	</c:forEach>

</body>
</html>