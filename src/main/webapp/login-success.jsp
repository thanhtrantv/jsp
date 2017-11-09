<%@ page import="java.util.*" %>
<%@ page import="main.java.com.helloword.*" %>
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

        <h3 class="header-table-info">List Student</h3>
        <table id="list-student">
             <tr class="header-table">
                <th>Id</th>
                <th>Name</th>
                <th>Mark</th>
                <th>Class</th>
             </tr>
             <%
                List<Student> lstStudent= (List)session.getAttribute("lstStudent");

                for(int i=0;i<lstStudent.size();i++){
                     Student std=lstStudent.get(i);
             %>
                     <tr>
                        <td>
                            <a href="student-detail?idStudent=<%=std.getId() %>">
                                <%=std.getId() %>
                            </a>
                        </td>
                        <td><%=std.getName() %></td>
                        <td><%=std.getMark() %></td>
                        <td><%=std.getClassName() %></td>
                     </tr>
             <%
                }
             %>
        </table>
        <jsp:include page = "footer.jsp" flush = "true" />
    </body>
</html>