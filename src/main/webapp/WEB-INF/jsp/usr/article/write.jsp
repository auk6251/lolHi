<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խù� �ۼ�</title>
</head>
<body>



	<h1>�Խù� �ۼ�</h1>

	<form action="doWrite">
	<div>���� : <input type="text" maxlength="30" placeholder="������ �Է����ּ���" name="title"/></div>
	<div>���� : <input type="text" maxlength="30" placeholder="������ �Է����ּ���" name="body" /></div>
	<div>���� : <input type="submit" value="�ۼ�" /></div>
	</form>
	<hr />

</body>
</html>