<%
    session.removeAttribute("usernameLogin");
    String redirectURL = "login.jsp";
    response.sendRedirect(redirectURL);
%>