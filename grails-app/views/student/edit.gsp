<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>

</head>
<body>
<g:render template="../header"></g:render>
<h1>Edit student</h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${student}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.student}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>




<g:form action="update" method="PUT" id="${student.id}">

    <label>Name</label>
    <g:textField name="name" class="form-control" require="true" value="${student?.name}"></g:textField>
    </div>
    <div class="form-group">
        <label>Batch</label>
        <g:select name="batch" required="true" from="${['2016','2017','2018','2019','2020']}" class="form-control"></g:select>
    </div>
    <div class="form-group">
        <label>Address</label>
        <g:textField name="address" required="true" class="form-control" value="${student?.address}"></g:textField>
    </div>
    <div class="form-group">
        <label>Email</label>
        <g:textField name="email" required="true" class="form-control" value="${student?.email}"></g:textField>
    </div>
    <div class="form-group">
        <label>Roll</label>
        <g:textField name="roll" required="true" class="form-control" value="${student?.roll}"></g:textField>
    </div>

    <g:submitButton name="submit"  value="Update Student" class="btn btn-primary"></g:submitButton>

</g:form>

</body>
</html>
