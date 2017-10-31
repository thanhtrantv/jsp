<html>
    <head>
        <title>Welcome Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
        <h3>Hello <%=request.getParameter("username")%></h3>

        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>