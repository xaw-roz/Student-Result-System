<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>

</head>
<body>
<g:render template="../header"></g:render>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${this.user}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.user}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>


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
