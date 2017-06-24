<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>

</head>
<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<h1>Add result</h1>
<g:form action="selectsem" method="POST">
    <label>Enter the Roll of the student</label>
    <g:textField name="roll" class="form-control" required="true" ></g:textField>
    </div>

    <g:submitButton name="submit" value="Add Result" class="btn btn-primary"></g:submitButton>
</g:form>

</body>
</html>
