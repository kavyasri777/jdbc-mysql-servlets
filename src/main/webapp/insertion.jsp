
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Registration</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 50px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="form-container">
            <h2 class="text-center text-primary">User Registration</h2>
            <form action="logindata" method="post">
                
                <div class="mb-3">
                    <label class="form-label">Enter Name:</label>
                    <input type="text" class="form-control" name="fullname" placeholder="Enter name" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">date of birth:</label>
                    <input type="text" class="form-control" name="dateofbirth" placeholder="Enter dateofbirth" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Address:</label>
                    <input type="text" class="form-control" name="address" placeholder="Enter Address" required>
                </div>
                  <div class="mb-3">
                    <label class="form-label">phonenumber:</label>
                    <input type="text" class="form-control" name="phonenumber" placeholder="Enter Phonenumber" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">email:</label>
                    <input type="email" class="form-control" name="email" placeholder="Ente your email" required>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-success w-100">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
