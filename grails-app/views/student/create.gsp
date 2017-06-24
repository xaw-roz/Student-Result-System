<!DOCTYPE html>
<html>
    <head>
        <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
        <asset:stylesheet href="index.css"></asset:stylesheet>

    </head>
    <body>
    <g:render template="../header"></g:render>
    <h1>Create student</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${student}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.student}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save" method="POST">
                <label>Name</label>
                <g:textField name="name" class="form-control" required="true" value="${fieldValue(bean:student,field:'name')}"></g:textField>
                </div>
                <div class="form-group">
                <label>Batch</label>
                    <g:select name="batch" from="${['2016','2017','2018','2019','2020']}" required="true" class="form-control"></g:select>
                </div>
                <div class="form-group">
                <label>Address</label>
                <g:textField name="address" class="form-control" required="true" value="${fieldValue(bean:student,field:'address')}"></g:textField>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <g:textField name="email" class="form-control" required="true" value="${fieldValue(bean:student,field:'email')}"></g:textField>
                </div>
                <div class="form-group">
                    <label>Roll</label>
                    <g:textField name="roll" class="form-control" required="true" value="${fieldValue(bean:student,field:'roll')}"></g:textField>
                </div>

                <g:submitButton name="submit" value="Create Student" class="btn btn-primary"></g:submitButton>
            </g:form>

    </body>
</html>
