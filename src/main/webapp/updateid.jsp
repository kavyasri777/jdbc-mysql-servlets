
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Update Account</h2>
        <div class="card w-50 mx-auto p-4 shadow">
            <div class="card-body">
                <h5 class="card-title text-center">Enter Account Number</h5>
                <form action="updatedaccount" method="post">
                    <div class="mb-3">
                        <label class="form-label" for="accountno">Account Number</label>
                        <input type="text" id="accountno" class="form-control" name="accountno" placeholder="Enter your Account Number" required />
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Click Here</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    