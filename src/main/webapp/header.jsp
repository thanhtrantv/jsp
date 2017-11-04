<header>
    <h3>MISTA Training</h3>
    <%
        String username=(String)session.getAttribute("usernameLogin");

        if(username==null || username.equals("")){
			String redirectURL = "logout.jsp";
			response.sendRedirect(redirectURL);
        }else{
    %>
        <label>Hello <%=session.getAttribute("usernameLogin")%></label>
        <a href="logout.jsp">Logout</a>
    <%
        }
    %>
</header>