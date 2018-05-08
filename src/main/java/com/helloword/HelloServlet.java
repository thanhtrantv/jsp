package com.helloword;

import java.io.IOException;

/**
 * Created by thanhtran on 10/24/2017.
 */
public class HelloServlet extends javax.servlet.http.HttpServlet {
	protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
		System.out.println("post request");
	}

	protected void doGet(javax.servlet.http.HttpServletRequest request,
						 javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
		System.out.println("get request");
		response.sendRedirect("login.jsp");
	}
}
