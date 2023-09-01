<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/styleEdit.css">
<title>Editando Cadastro</title>
</head>
<body>

	<%@page
		import="com.engfabiorogerio.finalJava1.dao.UserDAO,com.engfabiorogerio.finalJava1.bean.User"%>

	<%
	String id = request.getParameter("id");
	User u = UserDAO.getRecordById(Integer.parseInt(id));
	%>

	<h1>Editar Cadastro</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="password"
					value="<%=u.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><input type="radio" name="sex" value="male" />Masculino <input
					type="radio" name="sex" value="female" />Feminino</td>
			</tr>
			<tr>
				<td>País:</td>
				<td><select name="country">
						<option>Brasil</option>
						<option>Argentina</option>
						<option>Chile</option>
						<option>Paraguai</option>
						<option>Colombia</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar" id="btnSubmit"/></td>
			</tr>
		</table>
	</form>

</body>
</html>
