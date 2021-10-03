package com.website.servlets;/*
 * Created by Vaishnavi Chaurasia
 * 01-Oct-21
 * 8:41 PM
 * VPS
 */

import com.website.dao.UserDao;
import com.website.entities.User;
import com.website.helper.ConnectionProvider;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
public class RegisterServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            // fetch all data

            String check = req.getParameter("user_check");
            if(check == null){
                out.println("Please accept the terms and conditions");
            }
            else{
                String name = req.getParameter("user_name");
//            out.println(name);
                String email = req.getParameter("user_email");
                String password = req.getParameter("user_password");
                String address = req.getParameter("user_address");
                // create user object
                User user = new User(name,email,password,address);

                UserDao dao = new UserDao(ConnectionProvider.getConnection());
               if (dao.saveUser(user)){
                   // data saved to database
                out.println("done");
               }
               else {
                   out.println("error");
               }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
