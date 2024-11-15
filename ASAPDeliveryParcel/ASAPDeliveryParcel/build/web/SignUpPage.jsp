<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>
    <link rel="stylesheet" href="css/SignUpPage.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=JetBrains+Mono">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="fonts/material icon/css/material-design-iconic-font.min.css">

    <title>Registration Page</title>
    <style>
        /* Add these styles to SignUpPage.css */

.signup-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.signup-form,
.signup-image {
    width: 40%; /* Adjust the width as needed, leaving some space for margin */
}

.signup-form {
    max-width: 400px; /* Adjust the width as needed */
}

.signup-image img {
    max-width: 100%;
    height: auto;
}

    </style>
    
    <script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("passwordInput");
        var toggleIcon = document.querySelector('.toggle-password');

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleIcon.innerHTML = "&#x1F440;"; // Eye icon (open)
        } else {
            passwordInput.type = "password";
            toggleIcon.innerHTML = "&#x1F441;"; // Eye icon (closed)
        }
    }
</script>
     <script> 
function validate()
{ 
  var ADMIN_ID = document.form.ADMIN_ID.value; 
  var PASSWORD = document.form.PASSWORD.value;
  var MANAGER_NAME = document.form.MANAGER_NAME.value; 
  var PASSWORD = document.form.PASSWORD.value;
  var ADMIN_ID = document.form.ADMIN_ID.value; 

  if (ADMIN_ID===null || ADMIN_ID==="")
  { 
  alert("id cannot be blank"); 
  return false; 
  }
  else if(PASSWORD===null || PASSWORD==="")
  { 
  alert("Password cannot be blank"); 
  return false; 
  } 
  else if(MANAGER_NAME===null || MANAGER_NAME==="")
  { 
  alert("Name cannot be blank"); 
  return false; 
  } 
  else if(MANAGER_EMAIL===null || MANAGER_EMAIL==="")
  { 
  alert("Email cannot be blank"); 
  return false; 
  } 
  else if(MANAGER_HP===null || MANAGER_HP==="")
  { 
  alert("Phone Number cannot be blank"); 
  return false; 
  } 
}
</script> 
</head>

<body>
    <div class="main">
        <!--Register form -->

        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Register</h2>

                        <form action="SignupServlet" name="form" method="POST" onsubmit="return validate()">

                            <div class="form-group">
                                <label for="ADMIN_ID"><i class="material-icons">account_circle</i></label>
                                <input type="text" name="ADMIN_ID" placeholder="ADMIN ID" />
                            </div>
                            <div class="form-group">
                            <label for="PASSWORD"><i class="eyeToggle material-icons">visibility</i></label>
                            <input type="password" name="PASSWORD" id="passwordInput" placeholder="PASSWORD" />
                            </div>

                            <div class="form-group">
                                <label for="MANAGER_NAME"><i class="material-icons">account_circle</i></label>
                                <input type="text" name="MANAGER_NAME" placeholder="FULL NAME" />
                            </div>

                            <div class="form-group">
                                <label for="MANAGER_EMAIL"><i class="material-icons">email</i></label>
                                <input type="text" name="MANAGER_EMAIL" placeholder="ADMIN EMAIL" />
                            </div>

                            <div class="form-group">
                                <label for="MANAGER_HP"><i class="material-icons">phone</i></label>
                                <input type="text" name="MANAGER_HP" placeholder="ADMIN PHONE NUMBER" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" class="form-submit" value="Register" />
                            </div>
                            
                        </form>
                    </div>
                    <div class="signup-image">
                                <figure>
                                    <img src="images/signup-image.jpg" alt="sign up image">
                                </figure>
                                <a href="LogInPage.jsp" class="signup-image-link">I am already a member </a>
                            </div>
                </div>
            </div>
        </section>

    </div>
</body>

</html>