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

         <script src="javascript/jquery-3.3.1.min.js"></script>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
        <script src="javascript/app.js"></script>
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
        <button onclick="loadData()">Click me</button>

        <h3 class="header-table-info">List Student</h3>
        <table id="list-student">
             <thead>
                <tr class="header-table">
                                <th>Id</th>
                                <th>Name</th>
                                <th>Mark</th>
                                <th>Class</th>
                             </tr>
             </thead>

        </table>
        <div class="loading-bar">
            <div class="spiner" ></div>
        </div>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>