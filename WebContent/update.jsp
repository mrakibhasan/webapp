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
<jsp:useBean id="user" class="com.demo.model.User" />
<jsp:setProperty name="user" property="*"/>
<jsp:useBean id="obj" class="com.demo.dao.UserDao" />
<%
	
    //String id=request.getParameter("id");
	
    int x = obj.update(user);
	response.sendRedirect("view.jsp");	
%>

</body>
</html>