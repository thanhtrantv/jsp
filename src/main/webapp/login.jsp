<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
    </head>
    <body>

        <div class="login-container">
            <form action="login" method="post">
                <div class="username-form form-control">
                    <label >User Name</label>
                    <input type="text" id="username" name="username">
                </div>
                <div class="password-form  form-control">
                    <label >Password</label>
                    <input type="password" id="password" name="password">
                </div>
                <input type="submit" value="Login" id="submit" name="submit">
            </form>
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>