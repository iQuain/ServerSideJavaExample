<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<form method="post" action="RegisterServlet">
		<table>
			<tr>
				<td>Enter Username:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Enter Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Enter Address:</td>
				<td><input type="text" name="address"></td>
			</tr>
		</table>
		<input type="submit" value="Register">
	</form>
</body>
</html>