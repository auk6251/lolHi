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


		<div>
			번호 : ${article.id} <br /> 
			작성날짜 : ${article.regDate} <br />
			 갱신날짜 : ${article.updateDate} <br />
			 제목 : ${article.title} <br /> 
			 내용 : ${article.body}
		</div>
		<hr />


</body>
</html>