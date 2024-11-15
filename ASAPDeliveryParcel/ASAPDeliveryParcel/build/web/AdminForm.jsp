<%-- 
    Document   : AdminForm
    Created on : Jan 13, 2024, 3:15:38 AM
    Author     : Nazira Khairunnisa
--%>




<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title> Admin Form </title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=JetBrains+Mono">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>

<body class="sub_page">

  <div class="hero_area">

    <div class="hero_bg_box">
      <div class="bg_img_box">
        <img src="images/hero-bg.png" alt="">
      </div>
    </div>

    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="dashboard.jsp">
            <span>
              ASAP DELIVERY
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item ">
                <a class="nav-link" href="dashboard.jsp">dashboard </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="policy.jsp">POLICY</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="data.jsp">MANAGEMENT <span class="sr-only">(current)</span> </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="team.jsp">Team</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp"> <i class="fa fa-user" aria-hidden="true"></i> LOGOUT</a>
              </li>
              
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

    <section>
    <div class="layout-container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2><b>Manage Admin</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th class="center-align">ID</th>
                                <th class="center-align">Password</th>
                                <th class="center-align">Name</th>
                                <th class="center-align">Email</th>
                                <th class="center-align">Phone Number</th>
                                <th class="center-align">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- column data -->
                            <%
                            try {
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/parcelDB;create=true;user=app;password=app");
                                Statement statement = conn.createStatement();
                                ResultSet resultSet = statement.executeQuery("SELECT * FROM APP.ADMIN ORDER BY ADMIN_ID");

                                while (resultSet.next()) {
                                    out.println("<tr>");
                                        out.println("<td>" + resultSet.getString("ADMIN_ID") + "</td>");
                                        out.println("<td>" + resultSet.getString("PASSWORD").replaceAll(".", "*") + "</td>");
                                        out.println("<td>" + resultSet.getString("MANAGER_NAME") + "</td>");
                                        out.println("<td>" + resultSet.getString("MANAGER_EMAIL") + "</td>");
                                        out.println("<td>" + resultSet.getString("MANAGER_HP") + "</td>");
                                        out.println("<td>");
                                            out.println("<a href=\"AdminServlet?action=edit&id=" + resultSet.getString("ADMIN_ID") + "\" class=\"edit\" data-toggle=\"modal\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Edit\">&#xE254;</i></a>");
                                            out.println("</td>");
                                        out.println("</tr>");
                                    }

                                    resultSet.close();
                                    statement.close();
                                    conn.close();
                                } catch (SQLException sqle) {
                                    out.println(sqle.getMessage());
                                } catch (Exception e) {
                                    out.println(e.getMessage());
                                }
                                %>
                        </tbody>
                    </table>
                    <%
                        Connection conn = null;
                        Statement statement = null;
                        ResultSet resultSet = null;
                        try {
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/parcelDB;create=true;user=app;password=app");
                            statement = conn.createStatement();
                            resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.ADMIN");
                            int totalEntries = 0;
                            if (resultSet.next()) {
                                totalEntries = resultSet.getInt(1);
                            }
                    %>
                    <div class="clearfix">
                        <div class="hint-text">Total entries: <b><%= totalEntries %></b> entries</div>
                    </div>
                    <%
                        } catch (ClassNotFoundException e) {
                            e.printStackTrace();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        } finally {
                            if (resultSet != null) {
                                try {
                                    resultSet.close();
                                } catch (SQLException e) { /* ignored */ }
                            }
                            if (                            statement != null) {
                                try {
                                    statement.close();
                                } catch (SQLException e) { /* ignored */ }
                            }
                            if (conn != null) {
                                try {
                                    conn.close();
                                } catch (SQLException e) { /* ignored */ }
                            }
                        }
                    %>
                </div>
            </div>
        </section>
                
  

  
  <!-- end info section -->


  <!-- jQery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script type="text/javascript" src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>

</html>

