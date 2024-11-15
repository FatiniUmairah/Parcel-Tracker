<%-- 
    Document   : addCustForm
    Created on : Jan 13, 2024, 3:38:24 AM
    Author     : Nazira Khairunnisa
--%>
<%@page import="java.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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

  <title> Company Policy </title>

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
   <link href="css/CRUDForm.css" rel="stylesheet" />
    
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page" style="background-color: white;">

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
          <a class="navbar-brand" href="index.html">
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
              <li class="nav-item active">
                <a class="nav-link" href="policy.jsp">POLICY<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="data.jsp">MANAGEMENT  </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="team.jsp">Team</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"> <i class="fa fa-user" aria-hidden="true"></i> logout</a>
              </li>
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                  <i class="fa fa-search" aria-hidden="true"></i>
                </button>
              </form>
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- about section -->

  <section class="content" style="background-color:#06517B;">
    <div class="layout-container">
            <div class="center-align">
                <h2>ADD CUSTOMER</h2>
            </div>

            <div class="inner-container">
                <form method="POST" action="CustomerServlet">
                    <input type="hidden" name="action" value="create">

                    <h3 class="form-label">CUSTOMER ID</h3>
                    <div class="form-inputbox">
                        <%
                            String lastCustomerId = null;
                            try {
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/parcelDB;create=true;user=app;password=app");
                                Statement statement = conn.createStatement();
                                ResultSet resultSet = statement.executeQuery("SELECT CUSTOMERID FROM APP.CUSTOMER ORDER BY CUSTOMERID DESC FETCH FIRST ROW ONLY");

                                if (resultSet.next()) {
                                    lastCustomerId = resultSet.getString("CUSTOMERID");
                                }

                                resultSet.close();
                                statement.close();
                                conn.close();
                            } catch (SQLException sqle) {
                                out.println(sqle.getMessage());
                            } catch (Exception e) {
                                out.println(e.getMessage());
                            }

                            String nextCustomerId = "C001";
                            if (lastCustomerId != null) {
                                int lastCustomerIdNumber = Integer.parseInt(lastCustomerId.substring(1));
                                nextCustomerId = "C" + String.format("%03d" ,lastCustomerIdNumber + 1);
                            }
                        %>
                        <input type="text" name="CUSTOMERID" value="<%= nextCustomerId %>" >
                    </div>

                    <h3 class="form-label">CUSTOMER </h3>
                    <div class="form-inputbox">
                        <input type="text" name="CUSTOMERNAME" placeholder="Name" >
                    </div>

                    <h3 class="form-label">HP</h3>
                    <div class="form-inputbox">
                        <input type="text" name="CUSTOMERHP" placeholder="HP" >
                    </div>

                    <h3 class="form-label">Email</h3>
                    <div class="form-inputbox">
                        <input type="text" name="CUSTOMEREMAIL" placeholder="Email " >
                    </div>

                    <h3 class="form-label">Address</h3>
                    <div class="form-inputbox">
                        <input type="text" name="CUSTOMERADDRESS" placeholder="Address" >
                    </div>

                    <h3 class="form-label">Gender</h3>
                    <div class="form-inputbox">
                        <select name="CUSTOMERGENDER" >
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>

                    <div class="form-inputbox">
                        <input type="submit" value="Add Customer" class="btn">
                        <input type="reset" value="Reset" class="btn btn-reset">
                    </div>
                </form>
        </div>
  </section>

  <!-- end about section -->

  <!-- info section -->

  <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3 info_col">
          <div class="info_contact">
            <h4>
              Address
            </h4>
            <div class="contact_link_box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                   No.7 1st Floor, Jalan 18/1b, 47500 Subang Jaya, Selangor
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                   Call 03-2779 0668
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  ASAP@gmail.com
                </span>
              </a>
            </div>
          </div>
          <div class="info_social">
            <a href="">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info_col">
          <div class="info_detail">
            <h4>
              Info
            </h4>
            <p>
              Establish an innovative and efficient parcel delivery system that leverages advanced technologies to streamline the entire process, ensuring timely and secure deliveries for both businesses and consumers. 
            </p>
          </div>
        </div>
        <div class="col-md-6 col-lg-2 mx-auto info_col">
          <div class="info_link_box">
            <h4>
              Links
            </h4>
            <div class="info_links">
              <a class="active" href="dashboard.jsp">
                Home
              </a>
             
              <a class="" href="team.jsp">
                Team
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info_col ">
          <h4>
            Subscribe
          </h4>
          <form action="#">
            <input type="text" placeholder="Enter email" />
            <button type="submit">
              Subscribe
            </button>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
 
  <!-- footer section -->

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

