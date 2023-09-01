<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.engfabiorogerio.finalJava1.dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Cadastro de Usuários</title>
</head>
<body>

	<jsp:useBean id="u" class="com.engfabiorogerio.finalJava1.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />

	<%
	int i = UserDAO.save(u);
	if (i > 0) {
		response.sendRedirect("adduser-success.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
	%>

</body>
</html>