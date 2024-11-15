<%-- 
    Document   : dashboard
    Created on : Jan 12, 2024, 10:26:55 PM
    Author     : Nazira Khairunnisa
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    int totalCustomers = 0;
    int totalCouriers = 0;
    int totalParcels = 0;
%>
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

  <title>ASAP DELIVERY</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- Fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!-- Owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- Font Awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />

  <!-- Responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

          <style>
            .dashboard-box {
                padding: 20px;
                margin: 20px;
                text-align: center;
                color: #fff;
                border-radius: 5px;
            }

            .dashboard-box .fa {
                margin-bottom: 10px;
            }

            .box1 {
                background-color: #f44336;  /* Red */
            }

            .box2 {
                background-color: #4caf50;  /* Green */
            }

            .box3 {
                background-color: #2196f3;  /* Blue */
            }
        </style>
</head>

<body class="sub_page">
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <!-- Bootstrap JS -->
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <!-- Owl slider -->
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <!-- Custom JS -->
  <script type="text/javascript" src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>

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

  <section class="about_section layout_padding">
         
        <div class="container">
           
            <div style="opacity: 0.85; background: white; border-radius: 15px; padding: 20px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); max-width: 87%; margin: 0 auto;">
            <%
                Connection conn = null;
                Statement statement = null;
                ResultSet resultSet = null;
                try {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    conn = DriverManager.getConnection("jdbc:derby://localhost:1527/parcelDB;create=true;user=app;password=app");
                    statement = conn.createStatement();

                    resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.CUSTOMER");
                    if (resultSet.next()) {
                        totalCustomers = resultSet.getInt(1);
                    }

                    resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.COURIER");
                    if (resultSet.next()) {
                        totalCouriers = resultSet.getInt(1);
                    }

                    resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.PARCEL");
                    if (resultSet.next()) {
                        totalParcels = resultSet.getInt(1);
                    }
            %>

            <div class="container">
                <div class="heading_container heading_center">
                <h2>
                    <span>DASHBOARD</span>
                </h2>
              </div>
                <div style="display: flex; align-items: center; align-content: center" class="row justify-content-center">
                    <div class="col-md-9 dashboard-box box1">
                        <i class="fa fa-users fa-2x"></i>
                        <div class="dashboard-text">
                            <span>Total Customers</span>
                            <b><%= totalCustomers %></b>
                        </div>
                    </div>
                    <div class="col-md-9 dashboard-box box2">
                        <i class="fa fa-truck fa-2x"></i>
                        <div class="dashboard-text">
                            <span>Total Couriers</span>
                            <b><%= totalCouriers %></b>
                        </div>
                    </div>
                    <div class="col-md-9 dashboard-box box3">
                        <i class="fa fa-cube fa-2x"></i>
                        <div class="dashboard-text">
                            <span>Total Parcels</span>
                            <b><%= totalParcels %></b>
                        </div>
                    </div>
                </div>
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
                    if (statement != null) {
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
                <!-- Include Chart.js for charting -->
                <div class="container">
                    <canvas id="myChart"></canvas>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                <script>
                    var ctx = document.getElementById('myChart').getContext('2d');
                    var myChart = new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: ['Customers', 'Couriers', 'Parcels'],
                            datasets: [{
                                data: [<%= totalCustomers %>, <%= totalCouriers %>, <%= totalParcels %>],
                                label: 'Entries',
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(255, 206, 86, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255, 99, 132, 1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)'
                                ],
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });
                </script>
            </div>
        </div>
        </section>
 

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
              View Data
            </h4>
            <div class="info_links">
              <a class="" href="CustData.jsp">
                Customer Data
              </a>
              <a class="" href="ParcelData.jsp">
                Parcel Data
              </a>
              <a class="" href="CourierData.jsp">
                Courier Data
              </a>
              <a class="" href="AdminData.jsp">
                Admin Data
              </a>
            </div>
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
              </a>
              <a class="" href="team.jsp">
                Team
              </a>
            </div>
          </div>
        </div>
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
