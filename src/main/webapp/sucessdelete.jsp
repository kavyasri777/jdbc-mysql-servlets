<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Poppins', sans-serif;
        }
        .card {
            width: 30rem;
            text-align: center;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            background: white;
        }
        .card h1 {
            font-size: 2rem;
            font-weight: bold;
        }
    </style>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>

    <div class="card p-5">
        <div class="card-body">
            <h1 class="text-danger">🗑️ Successfully Deleted!</h1>
            <p class="mt-3">The item has been removed permanently.</p>
            <a href="mainpage.jsp" class="btn btn-primary mt-3">Go to mainpage</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>