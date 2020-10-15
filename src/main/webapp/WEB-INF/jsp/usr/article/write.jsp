<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 작성</title>
</head>
<body>



	<h1>게시물 작성</h1>

	<form action="doWrite">
	<div>제목 : <input type="text" maxlength="30" placeholder="제목을 입력해주세요" name="title"/></div>
	<div>내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요" name="body" /></div>
	<div>제출 : <input type="submit" value="작성" /></div>
	</form>
	<hr />

</body>
</html>