package com.task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/display")
public class Display extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Display() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set content type
        response.setContentType("text/html");

        // Get the value from form
        String name = request.getParameter("uname");

        // Display the name
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<style>");
        out.println("h3 { color: orange; font-family: serif; text-align: center }");
        out.println("</style>");
        out.println("<h3>Hello, " + name + "!</h2>");
        out.println("</body></html>");
    }
}
