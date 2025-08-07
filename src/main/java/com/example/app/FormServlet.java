package com.example.app;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class FormServlet extends HttpServlet {
    private static final String FILE_PATH = "/app/submissions.csv";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        if (name == null || email == null || message == null || name.isEmpty() || email.isEmpty()) {
            response.sendRedirect("error.jsp");
            return;
        }

        try (FileWriter fw = new FileWriter(FILE_PATH, true);
             BufferedWriter bw = new BufferedWriter(fw)) {
            bw.write(String.format("%s,%s,%s\n", name, email, message));
        }

        request.setAttribute("name", name);
        request.getRequestDispatcher("success.jsp").forward(request, response);
    }
}