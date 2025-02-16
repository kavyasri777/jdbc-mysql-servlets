<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="bootstrapandcss.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">User Login</h2>
        <div class="card w-50 mx-auto shadow p-4">
            <div class="card-body">
                <h5 class="card-title text-center">Enter Aadhaar Number</h5>
                <form action="login" method="post">
                    <div class="mb-3">
                        <label class="form-label" for="aadhaarNumber">Aadhaar Number:</label>
                        <input type="text" id="aadhaarNumber" class="form-control" name="adharnumber" placeholder="Enter Aadhaar Number" required />
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
