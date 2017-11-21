<%@ page import="java.util.*" %>
<%@ page import="com.helloword.*" %>
<html>
    <head>
        <title>Welcome Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
        <link rel="stylesheet" type="text/css" href="styles/addStudent.css">
        <script src="javascript/addStudent.js"></script>
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
        <div id="add-student-form">
            <div class="header-form-add">
                <h3>Add Student</h3>
            </div>
            <div class="content-form-add">
                <div class="row">
                    <label>Student Name: </label>
                    <input id="student-name"/>
                </div>
                <div class="row">
                    <label>Class Name: </label>
                    <input id="class-name"/>
                </div>
                <div class="row">
                     <label>Mark: </label>
                     <input id="mark"/>
                </div>
                <button onClick="addStudent()">Save</button>
            </div>
        </div>
        <div class="loading-bar" style="display:none;">
            <div class="spiner" ></div>
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>