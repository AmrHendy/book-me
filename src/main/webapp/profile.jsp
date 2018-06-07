
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.User" %>
<html>

<head>
    <title>Profile</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Book Me</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">

                <% if (session.getAttribute("user") != null) { %>

                <li class="nav-item active">
                    <a href="#" class="nav-link">Home</a>
                    <span class="sr-only">(current)</span>
                </li>
                <li class="nav-item">
                    <a href="profile.jsp" class="nav-link">
                        <%= ((User) session.getAttribute("user")).getfName() %>
                        <%= ((User) session.getAttribute("user")).getlName() %>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="logout" class="nav-link">Logout</a>
                </li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>


<div class="col-md-6 offset-md-3">

    <br class="mb-5">

    <!-- form card register -->
    <div class="card card-outline-secondary">
        <div class="card-header">
            <h3 class="mb-0">Profile</h3>
        </div>
        <div class="card-body">
            <form class="form" role="form" autocomplete="off" method="post" action="/profile">
                <div class="form-group">
                    <label for="inputEmail3">Email</label>
                    <input type="email" class="form-control" value="<%= ((User) session.getAttribute("user")).getEmail()%>" id="inputEmail3" name="email" placeholder="Email" required>
                </div>

                <div class="form-group">
                    <label for="inputPassword3">Password</label>
                    <input type="password" class="form-control" value="<%= ((User) session.getAttribute("user")).getPassword() %>" id="inputPassword3" name="pass" placeholder="Password" required>
                </div>

                <div class="form-group">
                    <label for="inputName">First Name</label>
                    <input type="text" class="form-control" value="<%= ((User) session.getAttribute("user")).getfName()%>" id="inputName" name="FName" placeholder="First name" required>
                </div>

                <div class="form-group">
                    <label for="inputName">Last Name</label>
                    <input type="text" class="form-control" value="<%= ((User) session.getAttribute("user")).getlName()%>" id="inputName" name="LName" placeholder="Last name" required>
                </div>

                <div class="form-group">
                    <label for="inputName">Phone Number</label>
                    <input type="text" class="form-control" value="<%= ((User) session.getAttribute("user")).getPhoneNumber()%>"  id="inputName" name="PhoneNumber" placeholder="(+20) 112 345 6789" required>
                </div>

                <div class="form-group">
                    <label for="inputName">Shipping Address</label>
                    <input type="text" class="form-control" value="<%= ((User) session.getAttribute("user")).getShippingAddress() %>" id="inputName" name="ShippingAddress" placeholder="10 Mohammed Salah St." required>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg float-right">Update</button>
                </div>

            </form>

        </div>
    </div>
    <!-- /form card register -->
</div>

</body>
</html>
