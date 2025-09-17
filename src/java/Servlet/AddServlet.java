/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class AddServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    //this function override doPost method so in form, if its method is POST -> run this function
    //while, if we must not set name for function (doPost, doGet), we must be keep the code auto generate by servlet
    //because, in their doPost, doGet, they have exist function: processRequest so code can be run
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServlet</title>");
            out.println("</head>");
            out.println("<body>");

            //get action
            String action = request.getParameter("action");
            //check action null or ""
            if (action == null || action.equals("")) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Thiếu tham số action");
                return;
            }

            //handle action
            switch (action) {
                //login
                case "login" -> {
                    handleLogin(request, response);
                }
                //register
                case "register" -> {
                    handleRegister(request, response);
                }
                default ->
                    throw new AssertionError();
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    //function handle login form
    private void handleLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //check login
        if (username.equals("admin") && password.equals("1")) {
            String name = "Admin Do The Hung";

            //create session
            HttpSession session = request.getSession();
            //set attribute for session
            session.setAttribute("name", name);
            //redirect: DemoApp/NotificationServlet
            response.sendRedirect("NotificationServlet");
        } else {
            //url: /DemoApp/AddServlet?action=login&username=...&password=...
            PrintWriter out = response.getWriter();
            out.println("<h2>Hello, Client</h2>");
        }
    }

    //function handle register form
    private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        PrintWriter out = response.getWriter();
        out.println(username);
        out.println(email);
        out.println(password);
    }
    
}
