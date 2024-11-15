<%-- 
    Document   : data
    Created on : Jan 13, 2024, 1:27:46 AM
    Author     : Nazira Khairunnisa
--%>

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

  <title> ASAP DELIVERY </title>

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
                <a class="nav-link" href="index.jsp"> <i class="fa fa-user" aria-hidden="true"></i> logout</a>
              </li>
              
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>


  <!-- service section -->

  <section class="service_section layout_padding">
    <div class="service_container">
      <div class="container ">
        <div class="heading_container heading_center">
          <h2>
            <span>VIEW</span> DATA
          </h2>
        </div>
        <div class="row">
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/w1.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="CustData.jsp">
                  <h5>
                  Customer Data
                </h5>
              </a>
                <p>
                  Manages and stores information related to the system's end-users. It includes details such as customer names, addresses, contact information, address and gender. This data enables personalized services and facilitates effective communication between the system and its users.
                </p>
                
              </div>
            </div>
          </div>
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/s2.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="ParcelData.jsp">
                  <h5>
                  Parcel Data
                </h5>
              </a>
                <p>
                  Responsible for handling information related to each individual parcel within the system. It includes data such as tracking number, weight, destination, and status. This function ensures accurate tracking and management of parcels throughout the delivery process.
                </p>
                
              </div>
            </div>
          </div>
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/s3.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="CourierData.jsp">
                  <h5>
                  Courier Data
                </h5>
              </a>
                <p>
                  Manages details about the delivery personnel or couriers involved in the system. It includes courier names, contact information, email and address. This function plays a crucial role in optimizing delivery operations, assigning tasks, and monitoring courier performance.
                </p>

              </div>
            </div>
          </div>
            <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/w4.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="AdminData.jsp">
                  <h5>
                  Admin Data
                </h5>
              </a>
                <p>
                  Central to the system's administrative tasks. It includes information about system administrators and access permissions. Admin data ensures the security and integrity of the system by controlling access levels and managing system configurations.
                </p>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  <!-- Manage Data section -->
  
    <div class="service_container">
      <div class="container ">
        <div class="heading_container heading_center">
          <h2>
              <br><br><span>DATA MANAGEMENT</span>
          </h2>
        </div>
        <div class="row">
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/w1.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="CustomerForm.jsp">
                  <h5>
                  Customer Data
                </h5>
              </a>
                <p>
                  Manages and stores information related to the system's end-users. It includes details such as customer names, addresses, contact information, address and gender. This data enables personalized services and facilitates effective communication between the system and its users.
                </p>
               
              </div>
            </div>
          </div>
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/s2.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="ParcelForm.jsp">
                  <h5>
                  Parcel Data
                </h5>
              </a>
                <p>
                   Responsible for handling information related to each individual parcel within the system. It includes data such as tracking number, weight, destination, and status. This function ensures accurate tracking and management of parcels throughout the delivery process.
                </p>
                
              </div>
            </div>
          </div>
          <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/s3.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="CourierForm.jsp">
                  <h5>
                  Courier Data
                </h5>
              </a>
                <p>
                   Manages details about the delivery personnel or couriers involved in the system. It includes courier names, contact information, email and address. This function plays a crucial role in optimizing delivery operations, assigning tasks, and monitoring courier performance.
                </p>
               
              </div>
            </div>
          </div>
            <div class="col-md-3 ">
            <div class="box ">
              <div class="img-box">
                <img src="images/w4.png" alt="">
              </div>
              <div class="detail-box">
                <a class="" href="AdminForm.jsp">
                  <h5>
                  Admin Data
                </h5>
              </a>
                <p>
                   Central to the system's administrative tasks. It includes information about system administrators and access permissions. Admin data ensures the security and integrity of the system by controlling access levels and managing system configurations. 
                </p>
                
              </div>
            </div>
          </div>
        </div>
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
  <section class="footer_section">
    <div class="container">
    </div>
  </section>
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