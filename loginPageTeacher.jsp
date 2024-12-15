<%-- 
    Document   : loginPageTeacher
    Created on : 8 Nov, 2022, 10:23:36 PM
    Author     : shata
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
	try {
		Class.forName("com.mysql.jdbc.Driver");
	}catch(Exception a){
		out.print(a);
	}
	try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lwu","root","subhi10");
		  out.println("Connection Established is success");
                    String email=request.getParameter("emailT");	
                    String pwd=request.getParameter("passwordT");
                    String password="";
                    String name="";
                    String branch="";
		    String query = "select * from teacher_information where email_id='"+email+"';";
		    Statement sta =con.createStatement();
		    ResultSet rs=sta.executeQuery(query);
		    while(rs.next()) {
                         name=rs.getString("name");
                         password=rs.getString("password");
                         branch=rs.getString("branch");
                           }
		    if(password.equals(pwd)){
                        session.setAttribute("nameTeacher", name);
                        session.setAttribute("emailTeacher", email);
                        session.setAttribute("branchTeacher",branch);
                        
		    	response.sendRedirect("teacherDashboard.jsp");

		    	
		    } else{
		    	out.print("Mismatch");
		    }
		
	}catch(Exception e){
		out.print("Error"+e);
		
	}
%>

    </body>
</html>
