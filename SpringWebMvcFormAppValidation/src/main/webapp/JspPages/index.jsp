<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
.error{
color:red
}
</style>
</head>
<body>
<h3>User Registration Form</h3>
<c:form action="register" modelAttribute="user" method="post">
<table>
<tr>
<td>User Name</td>
<td>
<c:input path="uname"/>
<c:errors path="uname" cssClass="error"></c:errors>
</td>
</tr>
<tr>
<td>Password</td>
<td>
<c:input path="pwd"/>
<c:errors path="pwd" cssClass="error"></c:errors>
</td>
</tr>
<tr>
<td>Email Id</td>
<td>
<c:input path="email"/>
<c:errors path="email" cssClass="error">
</c:errors>
</td>
</tr>
<tr>
<td>Mobile Number</td>
<td>
<c:input path="phone"/>
<c:errors path="phone" cssClass="error"></c:errors>
</td>
</tr>
<tr>
<td>Age</td>
<td>
<c:input path="age"/>
<c:errors path="age" cssClass="error"></c:errors>
</td>
</tr>
<tr>
<td><input type="submit" value="Register"></td>
</tr>
</table>
<a href="/">Home</a>
</c:form>
</body>
</html>