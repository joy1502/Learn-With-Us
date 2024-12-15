
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard -Learn With Us</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

   <!-- Vendor CSS Files -->
   <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="./vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
   <link href="./vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
   <link href="./vendor/quill/quill.snow.css" rel="stylesheet">
   <link href="./vendor/quill/quill.bubble.css" rel="stylesheet">
   <link href="./vendor/remixicon/remixicon.css" rel="stylesheet">
   <link href="./vendor/simple-datatables/style.css" rel="stylesheet">
  
   <!-- Template Main CSS File -->
   <link href="styledash.css  " rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header header-col fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="./index.html" class="logo d-flex align-items-center">
        <img src="../images/icon.png" alt="">
        <span class="d-none d-lg-block">Learn With Us</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->


    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">




        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="../images/icon.png" alt="Profile" class="rounded-circle">

            <span class="d-none d-md-block dropdown-toggle ps-2">
            <%
                        out.print(session.getAttribute("nameTeacher"));
                        %>
            </suserNamepan>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><%
                        out.print(session.getAttribute("nameTeacher"));
                        %></h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            

            <li>
                <a class="dropdown-item d-flex align-items-center" href="./index.html">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
          <a class="nav-link " href="./teacherDashboard.jsp">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>

      <li class="nav-item">
          <a class="nav-link " href="./addingpost.jsp">
          <i class="bi bi-journal-text"></i>
          <span>Add Post</span>
        </a>
      </li>
      <li class="nav-item">
          <a class="nav-link " href="./viewstudent.jsp">
          <i class="bi bi-journal-text"></i>
          <span>View Student</span>
        </a>
      

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    </section>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Post</h5>
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">Posts</th>
                    <th scope="col">Posts Title</th>
                    <th scope="col">Post Category</th>
                    <th scope="col">Post Content</th>
                    <th scope="col">Action</th>
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
                        <td>
                          <a href="" class="btn btn-danger">
                            Remove <i class="bi bi-exclamation-octagon"></i>
                          </a>
                        </td>
                      </tr>
                      <%
                           }
		    
		
	}catch(Exception e){
		out.print("Error"+e);
		
	}
%>
                    
                  
                  
                  
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Lear With Us</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      Designed by <a href="https://stunning-moonbeam-ac8289.netlify.app/">Subhasmita</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <!-- Vendor JS Files -->
 <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="./vendor/quill/quill.min.js"></script>
 <script src="./vendor/simple-datatables/simple-datatables.js"></script>
 <script src="./vendor/tinymce/tinymce.min.js"></script>

 <!-- Template Main JS File -->
 <script src="main.js"></script>

</body>

</html>