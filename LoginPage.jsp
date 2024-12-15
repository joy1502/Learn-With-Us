<%-- 
    Document   : LoginPage
    Created on : 7 oct, 2024, 8:18:26 PM
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
                    String email=request.getParameter("email");	
                    String pwd=request.getParameter("password");
                    String password="";
                    String name="";
                    String branch="";
		    String query = "select * from student_information where email_id='"+email+"';";
		    Statement sta =con.createStatement();
		    ResultSet rs=sta.executeQuery(query);
		    while(rs.next()) {
                         name=rs.getString("name");
                         password=rs.getString("password");
                         branch=rs.getString("branch");
                           }
		    if(password.equals(pwd)){
                        session.setAttribute("name", name);
                        session.setAttribute("email", email);
                        session.setAttribute("branch",branch);
                        
		    	response.sendRedirect("studentDashboard.jsp");

		    	
		    }
		    else{
		    	out.print("Mismatch");
		    }
		
	}catch(Exception e){
		out.print("Error"+e);
		
	}
%>

    </body>
</html>
