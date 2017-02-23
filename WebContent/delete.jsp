<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.demo.dao.UserDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<jsp:useBean id="obj" class="com.demo.dao.UserDao" />
<%
	String sid = request.getParameter("id");
    int id=Integer.parseInt(sid);

	int x = obj.deleteUser(id);
	response.sendRedirect("view.jsp");
%>
</body>
</html>