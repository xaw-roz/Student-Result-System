<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="index.css"></asset:stylesheet>

    <script>
        document.getElementById("print-btn").style.visibility="visible";
        function printResult() {
            document.getElementById("print-btn").style.visibility="hidden";
            window.print();
        }
    </script>
</head>
<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:set var="totalm" value="${0}"/>
<g:set var="totalo" value="${0}"/>
<div class="body_content">
<div class="form_table">

    <h2>Result of ${student.name} </h2>
    <table class="table">
        <tr>
            <td>
                Name: ${student.name}

                <br>
                Email: ${student.email}
                <br>
                Batch:
                ${student.batch}
                <br>
                Semester:
                ${semester.sem}

            </td>
        </tr>
        <tr>
            <td>
                <table class="table">
                    <tr>
                        <th>Subject Name</th>
                        <th>Total Marks</th>
                        <th>Obtained Marks</th>
                    </tr>
<g:each in="${semester.subjects}" var="subject">
                    <tr>
                            <td>
                                ${subject.name}
                        </td>
                        <td>
                            ${subject.totalmarks}
                            <g:set var="totalo" value="${totalo=totalo+subject.totalmarks}"/>
                        </td>
                        <td>
                        <g:each in="${subject.marks}" var="marks">
                            <g:if test="${marks.roll==student.roll}">
                                ${marks.marks}
                                <g:set var="totalm" value="${totalm=totalm+marks.marks}"/>

                        </g:if>
                        </g:each>
                        </td>
                    </tr>
</g:each>

                </table>
            </td>

        </tr>

        <tr>
            <td>
                Percentage=${((float)(totalm*100)/(float)totalo).round(2)}%
            </td>
        </tr>
    </table>

    <input type="button" class="btn-primary" id="print-btn" value="Print Result" onclick="printResult()";>
</div>

</body>
</html>
