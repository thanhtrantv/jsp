<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equalsIgnoreCase("admin")
        && password.equalsIgnoreCase("admin123")){
        String redirectURL = "login-success.jsp?username="+username;
        response.sendRedirect(redirectURL);
    }else{
    	out.println("Login failure!");
    }
%>
