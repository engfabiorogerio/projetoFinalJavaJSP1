<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/styleList.css">
<title>Visualização de Usuários</title>
</head>
<body>
	<%@page
		import="com.engfabiorogerio.finalJava1.dao.UserDAO,com.engfabiorogerio.finalJava1.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Lista de Usuários Cadastrados</h1>

	<a href="adduserform.jsp" id="adicionar">Adicionar Novo Usuário</a>

	<%
	List<User> list = UserDAO.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table>
		<thead id="cabecalho">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Password</th>
				<th>Email</th>
				<th>Sex</th>
				<th>Country</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="u">
			<tr id="linhas">
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="editform.jsp?id=${u.getId()}" id="btnEdit">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getId()}"
					onclick="confirmar();" id="btnDel">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />


	<script type="text/javascript">
		function confirmar() {
			confirm("Deseja realmente excluir o cadastro?");
		}
	</script>

</body>
</html>
