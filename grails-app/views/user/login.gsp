<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
        <asset:stylesheet href="index.css"></asset:stylesheet>
    %{--<link href="css/bootstrap-4.0.0-alpha.5-dist/css/bootstrap.css" rel="stylesheet">--}%
    %{--<link href="css/index.css" rel="stylesheet">--}%
    <title>Login Page</title>

</head>
<body>
<div class="form_table">
    <div class="form_login">


        <h1>Login</h1>
        <g:form action = "validateLogin" method = "POST">
            <div class="form-group">
                <label> Username</label> <g:textField type="text" name="username" required="true" class="form-control"></g:textField>
            </div>
            <div class="form-group">
                <label>
                    Password</label> <g:passwordField type="password" name="password" required="true" class="form-control"></g:passwordField><br>
            </div>
            <g:submitButton type="submit" value="login" name="submit" class="btn bg-primary" style="color: white"></g:submitButton>
            <a href="../student/viewresult"><input type="button" value="View Result" class="btn btn-primary" style="float: right"> </a>
        </g:form>
    </div>
</div>

</body>
</html>