<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
 <%@page import="com.demo.dao.UserDao,com.demo.model.*,java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <jsp:useBean id="obj" class="com.demo.dao.UserDao"></jsp:useBean>
 
 <%
 	List<User> list=obj.getAllUser();
    request.setAttribute("list",list);
 %>

<!-- <form action="adduser.jsp" method="post">  -->
	 <table align="center" border="1px" width="70%" id="myTable">
		 <tr>
			  <th>Id</th>
			  <th>UserName</th>
			  <th>Password</th>
			  <th>Edit</th>
			  <th>Delete</th>
		  <tr>
	   <c:forEach items="${list}" var="user">
		    <tr id="${user.getId()}">
		    	<td>${user.getId()}</td>
		    	<td>${user.getUsername()}</td>
		    	<td>${user.getPasword()}</td>
		    	<td>
					<button onclick="update(${user.getId()},'${user.getUsername()}','${user.getPasword()}')"><img src="images/edit.png"/></button>
				</td>
		    	
		    	<td><a href="delete.jsp?id=${user.getId()}"><img src="images/delete.png"/></a></td> 
		    </tr>
		     
		 </c:forEach>

	 </table>
<!-- </form>  -->
<br>

<table align="center" width="70%" >
	<tr><td><button onclick="AddUser()" id="buttonclick"><img src="images/add.png"/></button></td></tr>
</table>

</body>
</html>