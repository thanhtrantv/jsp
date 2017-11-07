package com.student;

import main.java.com.helloword.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class StudentDetailServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        Student student1=new Student();
        student1.setId(1);
        student1.setName("Nam");
        student1.setMark(6);
        student1.setClassName("12A");

        Student student2=new Student();
        student2.setId(2);
        student2.setName("Trung");
        student2.setMark(10);
        student2.setClassName("12B");

        Student student3=new Student();
        student3.setId(3);
        student3.setName("Nguyen");
        student3.setMark(5);
        student3.setClassName("12B");

        List<Student> lstStudent=new ArrayList<>();
        lstStudent.add(student1);
        lstStudent.add(student2);
        lstStudent.add(student3);


        int id = Integer.parseInt(request.getParameter("idStudent"));
        Student studentDetail=null;
        for(Student student:lstStudent){
            if(id==student.getId()){
                studentDetail=student;
                break;
            }
        }
        request.getSession().setAttribute("studentDetail", studentDetail);
        resp.sendRedirect("student-detail.jsp");
    }
}
