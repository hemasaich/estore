<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
         <center>
         <h5>
         <%
               session.invalidate();
               out.println();
         %>
         <jsp:include page="AdminLogin.html"/>
         </h5>
</body>
</html>