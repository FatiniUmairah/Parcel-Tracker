<%-- 
    Document   : addAdminForm
    Created on : Jan 13, 2024, 3:39:15 AM
    Author     : Nazira Khairunnisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Admin</title>
    <link rel="stylesheet" href="CSS/style.css" type="text/css"/>
    <link rel="stylesheet" href="CSS/CRUDForm.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="logo">ASAP PARCEL</div>
    </header>
    
    <section class="content">
        <div class="layout-container">
            <div class="center-align">
                <h2>Add Admin</h2>
            </div>

            <div class="inner-container">
                <form method="POST" action="AdminServlet">
                    <input type="hidden" name="action" value="create">

                    <h3 class="form-label">Admin ID</h3>
                    <div class="form-inputbox">
                        <input type="text" name="ADMIN_ID" placeholder="Admin ID required" style="font-family: 'JetBrains Mono Semibold';">
                    </div>

                    <h3 class="form-label">Manager Name</h3>
                    <div class="form-inputbox">
                        <input type="text" name="MANAGER_NAME" placeholder="Manager Name required" style="font-family: 'JetBrains Mono Semibold';">
                    </div>

                    <h3 class="form-label">Manager Email</h3>
                    <div class="form-inputbox">
                        <input type="text" name="MANAGER_EMAIL" placeholder="Manager Email required" style="font-family: 'JetBrains Mono Semibold';">
                    </div>

                    <h3 class="form-label">Manager Phone Number</h3>
                    <div class="form-inputbox">
                        <input type="text" name="MANAGER_HP" placeholder="Manager Phone Number required" style="font-family: 'JetBrains Mono Semibold';">
                    </div>

                    <h3 class="form-label">Password</h3>
                    <div class="form-inputbox">
                        <input type="password" name="PASSWORD" placeholder="Password required" style="font-family: 'JetBrains Mono Semibold';">
                    </div>

                    <div class="form-inputbox">
                        <input type="submit" value="Add Admin" class="btn">
                        <input type="reset" value="Reset" class="btn">
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>
