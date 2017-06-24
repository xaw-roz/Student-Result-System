<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>



<g:form action="update" method="PUT" id="${student.id}">

    <label>Name</label>
    <g:textField name="name" class="form-control" value="${student?.name}"></g:textField>
    </div>
    <div class="form-group">
        <label>Batch</label>
        <g:textField name="batch" class="form-control" value="${student?.batch}"></g:textField>
    </div>
    <div class="form-group">
        <label>Address</label>
        <g:textField name="address" class="form-control" value="${student?.address}"></g:textField>
    </div>
    <div class="form-group">
        <label>Email</label>
        <g:textField name="email" class="form-control" value="${student?.email}"></g:textField>
    </div>
    <div class="form-group">
        <label>Roll</label>
        <g:textField name="roll" class="form-control" value="${student?.roll}"></g:textField>
    </div>

    <g:submitButton name="submit" value="Update Student" class="btn btn-primary"></g:submitButton>

</g:form>

</body>
</html>
