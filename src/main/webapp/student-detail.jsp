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
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
        <%
            Student studentDetail=(Student)session.getAttribute("studentDetail");
        %>
        <div id="student-detail-form" class="container">
            <div class="student-detail">
                <div class="header-detail">
                    <h2>Student detail</h2>
                </div>
                <div class="content-detail">
                    <label>Name Student</label>
                    <h3><%=studentDetail.getName()%></h5>
                    <label>Class</label>
                    <h3><%=studentDetail.getClassName()%></h5>
                </div>
                <button>
                            <a href="login-success.jsp">Back</a>
                        </button>
            </div>
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>