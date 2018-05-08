package com.student;

import com.database.StudentService;
//import com.google.gson.Gson;
import com.helloword.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class StudentDetailServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idStudent"));
        StudentService studentService=new StudentService();
        try {
            Student studentDetail=studentService.findStudentById(id);
            System.out.print(studentDetail);
//            String json = new Gson().toJson(studentDetail);
            response.setContentType("application/json");
// Get the printwriter object from response to write the required json object to the output stream
            PrintWriter out = response.getWriter();
// Assuming your json object is **jsonObject**, perform the following, it will return your json object
//            out.print(json);
            out.flush();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
