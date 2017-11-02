<%@ page import="java.util.*" %>
<%@ page import="main.java.com.helloword.*" %>
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
                Student student1=new Student();
                student1.setId(1);
                student1.setName("Nam");
                student1.setMark(6);
                student1.setClassName("12A");

                Student student2=new Student();
                student2.setId(2);
                student2.setName("Trung");
                student2.setMark(10);
                student2.setClassName("12B");

                Student student3=new Student();
                student3.setId(3);
                student3.setName("Nguyen");
                student3.setMark(5);
                student3.setClassName("12B");

                List<Student> lstStudent=new ArrayList<>();
                lstStudent.add(student1);
                lstStudent.add(student2);
                lstStudent.add(student3);

                for(int i=0;i<lstStudent.size();i++){
                     Student std=lstStudent.get(i);
             %>
                     <tr>
                        <td>
                            <a href="student-detail.jsp?idStudent=<%=std.getId() %>">
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