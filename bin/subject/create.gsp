<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${subject}">
                <g:renderErrors bean="${subject}" as="list" field="title"/>
            <ul class="errors" role="alert">
                <g:eachError bean="${subject}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save" method="POST">
                <label>Subject Name</label>
                <g:textField name="name" class="form-control" required="true" value="${fieldValue(bean:subject,field:'name')}"></g:textField>
                </div>
                <div class="form-group">
                <label>Subject ID</label>
                <g:textField name="sid" class="form-control" required="true" value="${fieldValue(bean:subject,field:'sid')}"></g:textField>
                </div>
                <div class="form-group">
                    <label>Total Marks</label>
                    <g:field type="number" name="totalmarks" class="form-control"  required="true" value="${fieldValue(bean:subject,field:'totalmarks')}"/>
                </div>

                <div class="form-group">
                <label>Semester</label>
                    <g:field type="number" name="semester" class="form-control" min="0" max="8" required="true" value="${fieldValue(bean:subject,field:'semester')}"/>
                </div>
                <g:submitButton name="submit" value="Create Subject" class="btn btn-primary"></g:submitButton>
            </g:form>

    </body>
</html>
