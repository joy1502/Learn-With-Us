<%-- 
    Document   : addStudentPage
    Created on : 7 Nov, 2022, 8:58:26 PM
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
                    String fname=request.getParameter("fname");
                    String lname=request.getParameter("lname");
                    String email=request.getParameter("email");	
                    String pwd=request.getParameter("password");
                    String regd=request.getParameter("regd");
                    String branch=request.getParameter("branch");
                    String dept=request.getParameter("dept");
                    String name=fname+" "+lname;
		    String query = "insert into student_information (name,branch,email_id,password,dept,regd_no) values ('" +name+ "','" +branch+ "','" +email+ "',"
                            + "'" +pwd+ "','" +dept+ "','" +regd+ "');";
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
