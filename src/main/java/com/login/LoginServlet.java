package com.login;

import com.common.User;
import com.database.LoginService;
import com.database.StudentService;
import com.helloword.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginService service=new LoginService();
        boolean isLogin=false;
        User user=null;
        try {
            user=service.login(username,password);
            if(user!=null){
                if(user.getPassword().equalsIgnoreCase(password)){
                    isLogin=true;
                }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        if(isLogin==true){
            try {
                StudentService studentService=new StudentService();
                request.getSession().setAttribute("lstStudent", studentService.getListStudent());
                request.getSession().setAttribute("usernameLogin",user.getFullName());
                String redirectURL = "login-success.jsp";
                response.sendRedirect(redirectURL);
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }else{
            response.getWriter().println("Login failure!");
        }
    }
}
