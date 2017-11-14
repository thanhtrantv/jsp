package com.logout;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by thanhtran on 11/14/2017.
 */
public class LogoutServlet extends javax.servlet.http.HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().removeAttribute("usernameLogin");
		String redirectURL = "login.jsp";
		resp.sendRedirect(redirectURL);
	}
}
