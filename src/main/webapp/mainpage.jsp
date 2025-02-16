<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">Bank</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
            
                    <li class="nav-item"><a class="nav-link" href="insertion.jsp">Open New Account</a></li>
                    <li class="nav-item"><a class="nav-link" href="userlogin.jsp">View Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="updateid.jsp">Modify Account</a></li>
                      <li class="nav-item"><a class="nav-link" href="delete.jsp">Close Account</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container text-center py-5">
        <h2 class="display-4">Welcome to our Bank</h2>
        <p class="lead">Your trusted partner for secure and convenient banking.</p>
        <img src="https://media.istockphoto.com/id/1663047673/photo/growth-money-graph-digital-wallet-bank-payment-cash-coin-3d-background-of-banking-finance.jpg?s=612x612&w=0&k=20&c=Wvt4_UcYJfYd7EqDKSjW3tIUG2HShaFFJziL61Dj-W0=" alt="Banking Image" class="img-fluid mt-3" style="width: 150%; height: 100%; border-radius: 10px;">
        <br>
        <a href="logindata.jsp" class="btn btn-primary mt-4">Get Started</a>
    </div>
    
    <footer class="bg-primary text-white text-center py-3 mt-4">
        <p>&copy; 2025 Bank. All rights reserved.</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>