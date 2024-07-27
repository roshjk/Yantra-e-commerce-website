<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

 <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        form {
            background: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 90%;
            max-width: 400px;
        }
        .form-field {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="tel"], select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>

<body>

		<form action="/YANTRAA/RegisterServlet"  method="POST">
		<c:if test="${not empty requestScope.errorMessage}">

	    <div style="color: white; background-color: #362a7b; padding: 15px; border-radius: 10px; margin-bottom: 15px;">

	        <c:out value="${requestScope.errorMessage}" />

	    </div>

	   </c:if>
	<c:if test="${not empty requestScope.MESSAGE_ERROR}">
        <div style="color: red;">
            <c:out value="${requestScope.MESSAGE_ERROR}" />
        </div>
    </c:if>
        <h2>Create Account</h2>
        
        <div class="form-field">
            <label for="User Name">User Id:</label>
            <input type="text" id="UserName" name="Userid" required>
        </div>
        
        <div class="form-field">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>
        <div class="form-field">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
        </div>
        <div class="form-field">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-field">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
        <div class="form-field">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-field">
            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required>
        </div>
        <div class="form-field">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-field">
            <label for="retypePassword">Retype Password:</label>
            <input type="password" id="retypePassword" name="retypePassword" required>
        </div>
        <button type="submit">Register</button>
    </form>

</body>
</html>