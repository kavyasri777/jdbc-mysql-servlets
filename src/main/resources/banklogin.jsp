<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align=center>
<h1>user login</h1>
</div>
<form action="login" method="post"> 
<table>
<tr><td>Enter name:</td> <td><input type="text" name="name"></td></tr>
<tr><td>Enter email:</td> <td><input type="email" name="email"></td></tr>
<tr><td>Enter password:</td> <td><input type="password" name="password"></td></tr>
<tr><td><button type="submit" >login</button></td></tr>
</table>
</body>
</html>