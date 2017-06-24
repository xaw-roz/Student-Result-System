<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${student}">
                <g:renderErrors bean="${student}" as="list" field="title"/>
            <ul class="errors" role="alert">
                <g:eachError bean="${this.student}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
    <g:renderErrors bean="${this.student}" as="list" field="title"/>
            <g:form action="save" method="POST">
                <label>Name</label>
                <g:textField name="name" class="form-control" value="${fieldValue(bean:student,field:'name')}"></g:textField>
                </div>
                <div class="form-group">
                <label>Batch</label>
                <g:textField name="batch" class="form-control" value="${fieldValue(bean:student,field:'batch')}"></g:textField>
                </div>
                <div class="form-group">
                <label>Address</label>
                <g:textField name="address" class="form-control" value="${fieldValue(bean:student,field:'address')}"></g:textField>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <g:textField name="email" class="form-control" value="${fieldValue(bean:student,field:'email')}"></g:textField>
                </div>
                <div class="form-group">
                    <label>Roll</label>
                    <g:textField name="roll" class="form-control" value="${fieldValue(bean:student,field:'roll')}"></g:textField>
                </div>

                <g:submitButton name="submit" value="Create Student" class="btn btn-primary"></g:submitButton>
            </g:form>

    </body>
</html>
