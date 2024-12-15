<%-- 
    Document   : loginPageAdmin
    Created on : 8 Nov, 2022, 10:43:06 PM
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
                    String email=request.getParameter("emailA");	
                    String pwd=request.getParameter("passwordA");
                    String password="";
                    String name="";
		    String query = "select * from admin_information where email_id='"+email+"';";
		    Statement sta =con.createStatement();
		    ResultSet rs=sta.executeQuery(query);
		    while(rs.next()) {
                         name=rs.getString("name");
                         password=rs.getString("password");
                           }
		    if(password.equals(pwd)){
                        session.setAttribute("nameAdmin", name);
                        session.setAttribute("emailAdmin", email);
                        
		    	response.sendRedirect("adminDashboard.jsp");

		    	
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
