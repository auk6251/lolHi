<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խù� ����Ʈ</title>
</head>
<body>


	<h1>�Խù� ����Ʈ</h1>

	<c:forEach items="${articles}" var="article">
		<div>
			��ȣ : ${article.id} <br /> 
			�ۼ���¥ : ${article.regDate} <br />
			 ���ų�¥ :${article.updateDate} <br />
			 ���� : ${article.title} <br /> 
			 ���� ${article.body}
		</div>
		<hr />
	</c:forEach>

</body>
</html>