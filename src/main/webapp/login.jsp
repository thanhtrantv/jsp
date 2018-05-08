<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login Page</title>

         <script src="javascript/jquery-3.3.1.min.js"></script>
         <script src="javascript/bootstrap.min.js"></script>



         <link rel="stylesheet" type="text/css" href="styles/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="styles/signin.css">
    </head>
    <body class="text-center">
        <form class="form-signin" action="login" method="post">
            <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="User Name" required autofocus>

            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>

            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
        </form>

      </body>

</html>