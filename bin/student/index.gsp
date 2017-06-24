<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${students}" />
        </div>
    </body>
</html>