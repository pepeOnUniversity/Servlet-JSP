/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet("/AddServlet")
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
    }

//    function handle login form
    private void handleLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //check login
        if (username.equals("admin") && password.equals("1")) {
            String name = "Admin Do The Hung";
            
            //set name for request
            request.setAttribute("name", name);
            //create req dispatcher
            RequestDispatcher rd = request.getRequestDispatcher("NotificationServlet");
            //change req in server-side ==> URL not change, but VIEW is notification servlet
            rd.forward(request, response);
        } else {
        }
    }

    //function handle register form
    private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

}
