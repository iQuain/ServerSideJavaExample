<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>

<style>
	/* Border for form */
	form {
		border: 3px solid #f1f1f1;
	}
	
	/* Full-width inputs */
	input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	}
	
	/* Button styles */
	button {
		background-color: #4CAF50;
		color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    cursor: pointer;
	    width: 100%;
	}
	
	/* Button hover effect */
	button:hover {
		opacity: 0.7;
	}
	
	/* Adding Padding to the containers */
	.container {
		padding: 16px;
	}
</style>
</head>
<body>
	<form method="post" action="RegisterServlet">
		<div class="container">
			<label for="user"><b>Username:</b></label>
			<input type="text" name="name" placeholder="Enter Username" required>
			
			<label for="pass"><b>Password:</b></label>
			<input type="password" name="password" placeholder="Enter Password" required>
			
			<label for="add"><b>Address:</b></label>
			<input type="text" name="address" placeholder="Enter Address">
		</div>
		<div class="container" style="background-color:#f1f1f1">
			<button type="submit">Register</button>
		</div>
	</form>
</body>
</html>