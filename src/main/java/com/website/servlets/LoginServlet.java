package com.website.servlets;/*
 * Created by Vaishnavi Chaurasia
 * 03-Oct-21
 * 9:23 PM
 * VPS
 */

import com.website.dao.UserDao;
import com.website.entities.User;
import com.website.helper.ConnectionProvider;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            // fetch username and password
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            UserDao dao = new UserDao(ConnectionProvider.getConnection());

            User user = dao.getUserByEmailAndPassword(email , password);

            if (user == null){
             out.println("Invalid Details... Please register yourself first");
            }
            else {
                // login Session
                HttpSession httpSession = req.getSession();
                httpSession.setAttribute("currentUser", user);
                resp.sendRedirect("profile.jsp");
            }

        }
    }
}
