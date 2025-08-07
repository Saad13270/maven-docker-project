<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <h2>Thank you, <%= request.getAttribute("name") %>!</h2>
    <p>Your feedback has been submitted successfully.</p>
    <a href="index.jsp" class="btn btn-primary">Back to Home</a>
</body>
</html>