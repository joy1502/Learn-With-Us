<%-- 
    Document   : result
    Created on : 20 Nov, 2022, 7:38:32 PM
    Author     : shata
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Result</title>
</head>
<body>
 <%
  String msg = (String) request.getAttribute("message");
 out.println(msg);
 %>
</body>
</html>