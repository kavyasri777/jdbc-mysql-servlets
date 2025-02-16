<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Update Name and Mobile Number</h2>
        <div class="card w-50 mx-auto shadow p-4">
            <div class="card-body">
                <h5 class="card-title text-center">Enter Details</h5>
                <form action="updateuser" method="post">
                    <div class="mb-3">
                        <label class="form-label" for="name">Name:</label>
                        <input type="text" id="name" class="form-control" name="name" placeholder="Enter Name" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="mobileno">Mobile No:</label>
                        <input type="text" id="mobileno" class="form-control" name="mobileno" placeholder="Enter Mobile Number" required />
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
