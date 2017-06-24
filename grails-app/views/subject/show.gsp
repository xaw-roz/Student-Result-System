<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>
    <asset:stylesheet href="main.css"></asset:stylesheet>
    </head>
<body>
<g:render template="../header"></g:render>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<f:display bean="subject" />
<a href="/subject/delete/${subject.id}"><g:submitButton name="delete" style="float: left" class="btn btn-primary"></g:submitButton></a>
<a href="/subject/edit/${subject.id}"><g:submitButton name="Edit" style="float: right" class="btn btn-primary"></g:submitButton></a>


</body>
</html>
