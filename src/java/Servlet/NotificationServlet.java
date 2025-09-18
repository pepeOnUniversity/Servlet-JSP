/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class NotificationServlet extends HttpServlet {

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NotificationServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Notification Page</h1>");
            out.println("<p>Chào mừng bạn đến với trang thông báo!</p>");
            
            //get cookies
            Cookie[] cookies = request.getCookies();
            String name = "";
            
            //check cookies
            if (cookies != null) {
                //check for name cookie
                for(Cookie c : cookies){
                    if(c.getName().equals("name")){
                        name = c.getValue();
                        break;
                    }
                }
            }
            
            //display result
            if (!name.isEmpty()) {
                // Replace underscores with spaces for display
                String displayName = name.replace("_", " ");
                out.println("<h2>Xin chào: " + displayName + "</h2>");
                out.println("<p>Bạn đã đăng nhập thành công!</p>");
            } else {
                out.println("<h2>Không tìm thấy thông tin đăng nhập</h2>");
                out.println("<p>Vui lòng <a href='index.html'>đăng nhập</a> trước.</p>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }
}
