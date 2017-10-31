<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
        <div class="login-container">
            <div class="username-form">
                <label >User Name</label>
                <input type="text" id="username" name="username">
            </div>
            <div class="password-form">
                <label >Password</label>
                <input type="password" id="username" name="username">
            </div>
            <input type="submit" id="submit" name="submit">
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>