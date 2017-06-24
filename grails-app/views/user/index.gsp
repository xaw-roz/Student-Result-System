<!DOCTYPE html>
<html>
    <head>
        <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
        <asset:stylesheet href="index.css"></asset:stylesheet>

    </head>
    <body>
    <g:render template="../header"></g:render>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
    <a href="/user/create"><g:submitButton name="Create" value="Create User" style="float: left" class="btn btn-primary"></g:submitButton></a>

    <f:table class="table" collection="${users}" />

        </div>
    </body>
</html>