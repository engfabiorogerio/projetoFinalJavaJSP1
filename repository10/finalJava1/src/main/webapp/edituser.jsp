<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.engfabiorogerio.finalJava1.dao.UserDAO"%>  
<jsp:useBean id="u" class="com.engfabiorogerio.finalJava1.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDAO.update(u);  
response.sendRedirect("viewuser.jsp");  
%>  

</body>
</html>