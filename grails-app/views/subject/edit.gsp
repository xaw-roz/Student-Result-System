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

<g:hasErrors bean="${subject}">
    <g:renderErrors bean="${subject}" as="list" field="title"/>
    <ul class="errors" role="alert">
        <g:eachError bean="${subject}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<g:form action="update" method="PUT" id="${subject.id}">

    <label>Subject Name</label>
    <g:textField name="name" class="form-control" required="true" value="${subject.name}"></g:textField>
    </div>
    <div class="form-group">
        <label>Subject ID</label>
        <g:textField name="sid" class="form-control" required="true" value="${subject.sid}"></g:textField>
    </div>
    <div class="form-group">
        <label>Total Marks</label>
        <g:field type="number" name="totalmarks" class="form-control"  required="true" value="${subject.totalmarks}"/>
    </div>

    <div class="form-group">
        <label>Semester</label>
        <g:select name="semester" from="${[1,2,3,4,5,6,7,8]}" class="form-control"></g:select>
    </div>
    <g:submitButton name="submit" value="Update Subject" class="btn btn-primary"></g:submitButton>

            </g:form>

</body>
</html>
