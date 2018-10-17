<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form method="post" action="LoginServlet">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
		</table>
		<input type="submit" value="Login">
	</form>
	<label>The username and/or password used were incorrect.  Please try again!</label>
</body>
</html>