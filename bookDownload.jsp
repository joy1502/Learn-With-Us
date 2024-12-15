
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body style="background-color: blueviolet">

<div class="content">
  <div class="container d-flex flex-column">
      <div class="row align-items-center justify-content-center
          min-vh-100">
        <div class="col-12 col-md-8 col-lg-4">
          <div class="card shadow-lg">
            <div class="card-body">
                <form method="post" action="downloadFile">
                 <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">Posts</th>
                    <th scope="col">Posts Title</th>
                    <th scope="col">Post Category</th>
                    <th scope="col">Post Content</th>
                  </tr>
                </thead>
                <tbody>
                    <%
	try {
		Class.forName("com.mysql.jdbc.Driver");
	}catch(Exception a){
		out.print(a);
	}
	try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lwu","root","subhi10");
		    String query = "select * from post_information;";
		    Statement sta =con.createStatement();
		    ResultSet rs=sta.executeQuery(query);
		    while(rs.next()) {
                        %>
                 
                      <tr>
                        <th scope="row"><%=rs.getString("p_id") %></th>
                        <td><%=rs.getString("p_title") %></td>
                        <td><%=rs.getString("p_catagory") %></td>
                        <td><%=rs.getString("p_content") %></td>
                        
                      </tr>
                      <input type="text" value="<%=rs.getString("file_name") %>" >
                      <button type="submit">Download</button>
                      <%
                           }
		    
		
	}catch(Exception e){
		out.print("Error"+e);
		
	}
%>
                    
                  
                  
                  
                </tbody>
              </table>
              
<!--                <span>Don't have an account? <a href="home.html">sign in</a></span>-->
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  
</div>
</body>
</html>



