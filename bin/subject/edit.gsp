<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>



<g:form action="update" method="PUT" id="${user.id}">

        <label>Name</label>
        <g:textField name="name" class="form-control" required="true" value="${user.name}"></g:textField>
        </div>
        <div class="form-group">
            <label>Username</label>
            <g:textField name="username" class="form-control" required="true" value="${user.username}"></g:textField>
        </div>
        <div class="form-group">
            <label>Password</label>
            <g:textField name="password" class="form-control" required="true" value="${user.password}"></g:textField>
        </div>
        <div class="form-group">
            <label>Role</label>
            <g:select name="role" from="${["admin","superadmin"]}" required="true" class="form-control"></g:select>
        </div>
        <g:submitButton name="submit" value="Update User" class="btn btn-primary"></g:submitButton>

            </g:form>

</body>
</html>
