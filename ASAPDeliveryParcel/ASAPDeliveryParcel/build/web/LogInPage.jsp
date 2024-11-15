<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
     <link href="css/LogInPage.css" rel="stylesheet" />
     <style>
         /* Add these styles to LogInPage.css */



.signin-form,
.signin-image {
    display: inline;
    justify-content: space-between;
    align-items: center;
    width: 48%; /* Adjust the width as needed, leaving some space for margin */
}

.signin-form {
    max-width: 400px; /* Adjust the width as needed */
}

.signin-image img {
    max-width: 100%;
    height: auto;
}

     </style>
     
     <script> 
function validate()
{ 
  var ADMIN_ID = document.form.ADMIN_ID.value; 
  var PASSWORD = document.form.PASSWORD.value;

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
}
</script> 
</head>
<body>
    <div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                   
                    <div class="signin-form">
                        <h2 class="form-title">ADMIN LOGIN</h2>
                        <form method="post" name="form" action="LoginServlet" onsubmit="return validate()">
                            <div class="form-group">
                                <label for="ADMIN_ID"><i class="material-icons">account_circle</i></label>
                                <input type="text" name="ADMIN_ID" placeholder="ADMIN ID" />
                            </div>
                        <div class="form-group">
                         <label for="PASSWORD"></label>
                             <input type="password" name="PASSWORD" id="PASSWORD" placeholder="PASSWORD" />
                             <span toggle="#PASSWORD" class="eye-toggle material-icons">visibility</span>
                        </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="LOGIN" />
                            </div>
                        </form>
                         
                        <script>
                        document.addEventListener('DOMContentLoaded', function () {
                        const passwordInput = document.getElementById('PASSWORD');
                        const eyeToggle = document.querySelector('.eye-toggle');
        
                         eyeToggle.addEventListener('click', function () {
                         const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                         passwordInput.setAttribute('type', type);
                            this.textContent = type === 'password' ? 'visibility' : 'visibility_off';
                 });
                });
                
                </script>
                        
                    </div>
                    <div class="signin-image">
                        <figure>
                            <img src="images/signin-image.jpg" alt="sign up image">
                        </figure>
                             <a href="SignUpPage.jsp" class="signup-image-link"> NEW ADMIN? <br />CREATE AN ACCOUNT</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>