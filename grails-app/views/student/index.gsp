<!DOCTYPE html>
<html>
    <head>
        <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
        <asset:stylesheet href="index.css"></asset:stylesheet>

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="../header"></g:render>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
    <a href="/student/create"><g:submitButton name="Create" value="Create Student" style="float: left" class="btn btn-primary"></g:submitButton></a>


            <f:table collection="${students}" class="table" properties="['name', 'batch','roll','address','email']"/>

    </body>
</html>