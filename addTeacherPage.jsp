<%-- 
    Document   : addTeacherPage
    Created on : 8 Nov, 2022, 12:58:24 AM
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
	
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lwu","root","subhi10");
		  out.println("Connection Established is success");
                    String fname=request.getParameter("fname");
                    String lname=request.getParameter("lname");
                    String email=request.getParameter("email");	
                    String pwd=request.getParameter("password");
                    String eId=request.getParameter("eid");
                    String branch=request.getParameter("branch");
                    String dept=request.getParameter("dept");
                    String name=fname+" "+lname;
		    String query = "insert into teacher_information (name,employee_id,branch,email_id,password,dept) values ('" +name+ "','" +eId+ "','" +branch+ "',"
                            + "'" +email+ "','" +pwd+ "','" +dept+ "');";
		   Statement sta = con.createStatement();
                   int x = sta.executeUpdate(query);
                   if(x==0){
                       response.sendError(x, "Already Exist");
                   }
                   else{
                       response.sendRedirect("adminDashboard.jsp");
                   }
                   
                        
	}catch(Exception e){
		out.print("Error"+e);
		
	}
%>

    </body>
</html>
