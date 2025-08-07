<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Submissions</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <h2>Feedback Submissions</h2>
    <table class="table table-bordered">
        <thead>
            <tr><th>Name</th><th>Email</th><th>Message</th></tr>
        </thead>
        <tbody>
        <%
            File file = new File("/app/submissions.csv");
            if (file.exists()) {
                BufferedReader reader = new BufferedReader(new FileReader(file));
                String line;
                while ((line = reader.readLine()) != null) {
                    String[] parts = line.split(",");
                    if (parts.length >= 3) {
        %>
        <tr>
            <td><%= parts[0] %></td>
            <td><%= parts[1] %></td>
            <td><%= parts[2] %></td>
        </tr>
        <%
                    }
                }
                reader.close();
            }
        %>
        </tbody>
    </table>
</body>
</html>