<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խù� ��</title>
</head>
<body>


	<h1>�Խù� ��</h1>


		<div>
			��ȣ : ${article.id} <br /> 
			�ۼ���¥ : ${article.regDate} <br />
			 ���ų�¥ :${article.updateDate} <br />
			 ���� : ${article.title} <br /> 
			 ���� ${article.body}
		</div>
		<hr />


</body>
</html>