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
<g:form action="result" method="POST">
    <label>Enter the Roll of the student</label>
    <g:textField name="roll" class="form-control" required="true" ></g:textField>
    </div>

    <label>Select the semester</label>
    <g:select name="semester" from="${[1,2,3,4,5,6,7,8]}" class="form-control"></g:select>
    </div>

    <g:submitButton name="submit" value="View Result" class="btn btn-primary"></g:submitButton>
</g:form>

</body>
</html>
