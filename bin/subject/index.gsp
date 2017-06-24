<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
         <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${subjects}" />

    </div>
    </body>
</html>