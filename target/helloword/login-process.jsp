<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equalsIgnoreCase("admin")
        && password.equalsIgnoreCase("admin123")){
        session.setAttribute("usernameLogin",username);
        String redirectURL = "login-success.jsp";
        response.sendRedirect(redirectURL);
    }else{
    	out.println("Login failure!");
    }
%>
