package com.changepass;

import com.database.LoginService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by thanhtran on 5/8/2018.
 */
public class ChangePasswordServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("newPass");
        System.out.println(username+":changepass:"+password);
        LoginService service=new LoginService();
        service.changePassword(username,password);

    }
}
