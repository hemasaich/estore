<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Login - ElectroZone</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #1e2a38;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
        }
        .login-box {
            background-color: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 320px;
        }
        h2 {
            text-align: center;
            margin-bottom: 15px;
            color: #1e2a38;
        }
        .message {
            background-color: #fff3cd;
            color: #856404;
            border: 1px solid #ffeeba;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 16px;
            margin-bottom: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        footer {
            text-align: center;
            padding: 15px;
            background-color: #1e2a38;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>ElectroZone - Admin Portal</h1>
</header>

<div class="login-container">
    <div class="login-box">
        <h2>Admin Login</h2>

        <% 
           String msg = (String) request.getAttribute("msg"); 
           if (msg != null && !msg.trim().isEmpty()) { 
        %>
            <div class="message"><%= msg %></div>
        <% } %>

        <form action="alog" method="post">
            <label>UserName:</label>
            <input type="text" name="u_name" required>

            <label>Password:</label>
            <input type="password" name="u_pwd" required>

            <input type="submit" value="Login">
        </form>
    </div>
</div>

<footer>
    © 2025 ElectroZone. Admin Access Only.
</footer>

</body>
</html>
