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
    <a href="/subject/create"><g:submitButton name="Create" value="Create Subject" style="float: left" class="btn btn-primary"></g:submitButton></a>

            <f:table collection="${subjects}" properties="['name', 'sid','totalmarks','semester']"/>

    </div>
    </body>
</html>