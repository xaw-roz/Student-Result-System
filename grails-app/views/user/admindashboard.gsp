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
<g:render template="../header"></g:render>
<div class="jumbotron">
<h1>Welcome to admin dashboard</h1>
</div>
</body>
</html>
