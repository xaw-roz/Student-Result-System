<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>
    <asset:stylesheet href="main.css"></asset:stylesheet>
</head>
<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<h1>Add marks</h1>
<g:form action="addmarktodb" method="POST">
    <g:hiddenField name="roll" value="${roll}"></g:hiddenField>
    <g:hiddenField name="semester" value="${semester}"></g:hiddenField>
    <g:each in="${subjects}" var="subject">
    <label>Enter marks for ${subject.name}</label>

    <g:field type="number" name="${subject.name}" class="form-control" min="0" max="${subject.totalmarks}" required="true" ></g:field>
    </div>
</g:each>
    <g:submitButton name="submit" value="Add marks" class="btn btn-primary"></g:submitButton>
</g:form>

</body>
</html>
