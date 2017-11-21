<%@ page import="java.util.*" %>
<%@ page import="com.helloword.*" %>
<%
	String username=(String)session.getAttribute("usernameLogin");

	if(username==null || username.equals("")){
		String redirectURL = "logout.jsp";
		response.sendRedirect(redirectURL);
    }
%>
<html>
    <head>
        <title>Welcome Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
        <script src="javascript/student-detail.js"></script>
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />

        <div id="student-detail-form" class="container">
            <div class="id-student" style="display:none;"><%=request.getParameter("idStudent")%></div>
            <div class="student-detail">
                <div class="header-detail">
                    <h2>Student detail</h2>
                </div>
                <div class="content-detail" style="display:none;">
                    <label>Id</label>
                    <h3 class="id-student"></h3>
                    <label>Name Student</label>
                    <h3 class="name-student"></h3>
                    <label>Class</label>
                    <h3 class="class-student"></h3>
                    <label>Mark</label>
                    <h3 class="mark-student"></h3>
                </div>
                <div class="loading-bar">
                     <div class="spiner" ></div>
                </div>
                <button>
                    <a href="login-success.jsp">Back</a>
                </button>
            </div>
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>