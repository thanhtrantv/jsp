package com.login;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equalsIgnoreCase("admin")
                && password.equalsIgnoreCase("admin123")){
            request.getSession().setAttribute("usernameLogin",username);
            String redirectURL = "login-success.jsp";
            response.sendRedirect(redirectURL);
        }else{
            response.getWriter().println("Login failure!");
        }
    }
}
