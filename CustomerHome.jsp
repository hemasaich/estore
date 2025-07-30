<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard - ElectroZone</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

  * {
    box-sizing: border-box;
  }
  body {
    margin: 0;
    font-family: 'Poppins', Arial, sans-serif;
    background-image: url('https://b1850159.smushcdn.com/1850159/wp-content/uploads/2022/11/best-electronics-stores-in-osaka-scaled.jpg?lossy=1&strip=1&webp=1'); /* background image */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }
  header {
    background-color: rgba(30, 42, 56, 0.9);
    color: white;
    text-align: center;
    padding: 20px;
    font-weight: 600;
    font-size: 1.8rem;
    letter-spacing: 1.5px;
  }
  .container {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
  }
  .content-box {
    background: rgba(0, 0, 0, 0.85); /* increased opacity for darker black */
    border-radius: 15px;
    padding: 35px 45px;
    width: 600px;
    box-shadow: 0 12px 25px rgba(0,0,0,0.7);
    text-align: center;
    color: #ddd; /* light text for contrast */
  }
  .welcome-text {
    font-size: 1.8rem;
    font-weight: 700;
    background: none;
    -webkit-background-clip: unset;
    -webkit-text-fill-color: unset;
    text-shadow: 1px 1px 3px rgba(0,0,0,0.9);
    margin-bottom: 40px;

    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 100%;
    display: inline-block;
    text-align: center;
    color: #eee;
  }
  a {
    display: inline-block;
    margin: 12px 25px;
    padding: 12px 25px;
    font-size: 1rem;
    font-weight: 600;
    color: white;
    background: linear-gradient(45deg, #764ba2, #667eea);
    border-radius: 10px;
    text-decoration: none;
    box-shadow: 0 6px 12px rgba(102,126,234,0.6);
    transition: background 0.3s ease;
  }
  a:hover {
    background: linear-gradient(45deg, #667eea, #764ba2);
  }
  footer {
    background-color: rgba(30, 42, 56, 0.9);
    color: white;
    text-align: center;
    padding: 15px;
    font-size: 0.9rem;
    letter-spacing: 1px;
  }
</style>
</head>
<body>

<header>
  ElectroZone - Customer Portal
</header>

<div class="container">
  <div class="content-box">
    <div class="welcome-text">
      <%
        CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
        out.println("Welcome Mr/Ms. " + cbean.getFname());
      %>
    </div>
    <a href="viewproduct">View Product</a>
    <a href="logout">Logout</a>
  </div>
</div>

<footer>
  © 2025 ElectroZone. Customer Access Only.
</footer>

</body>
</html>
