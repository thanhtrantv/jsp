package com.student;

import com.database.StudentService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by thanhtran on 11/14/2017.
 */
public class StudentsServlet  extends javax.servlet.http.HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			StudentService studentService=new StudentService();
			String json = new Gson().toJson(studentService.getListStudent());
			response.setContentType("application/json");
// Get the printwriter object from response to write the required json object to the output stream
			PrintWriter out = response.getWriter();
// Assuming your json object is **jsonObject**, perform the following, it will return your json object
			out.print(json);
			out.flush();
		}
		catch(Exception e){
			e.printStackTrace();
		}

	}
}
