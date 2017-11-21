package com.student;

import com.database.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddStudentServlet extends javax.servlet.http.HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String className = request.getParameter("className");
        int mark = Integer.parseInt(request.getParameter("mark"));
        StudentService studentService=new StudentService();
        String rs=studentService.addStudent(name,className,mark);
        response.setContentType("application/text");
// Get the printwriter object from response to write the required json object to the output stream
        PrintWriter out = response.getWriter();
// Assuming your json object is **jsonObject**, perform the following, it will return your json object
        out.print(rs);
        out.flush();
    }
}
