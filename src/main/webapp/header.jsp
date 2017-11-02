<header>
    <h3>MISTA Training</h3>
    <%
        String username=(String)session.getAttribute("usernameLogin");
        out.println(username);
        if(username==null || username.equals("")){
        %>
        <jsp:forward page="login.jsp">
        <%
        }else{
    %>
        <label>Hello <%=session.getAttribute("usernameLogin")%></label>
        <a href="logout.jsp">Logout</a>
    <%
        }
    %>
</header>