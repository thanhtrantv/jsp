<%@ page import="java.util.*" %>
<%@ page import="main.java.com.helloword.*" %>
<html>
    <head>
        <title>Welcome Page</title>
        <link rel="stylesheet" type="text/css" href="styles/app.css">
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" />
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


            int id = Integer.parseInt(request.getParameter("idStudent"));
            Student studentDetail=null;
            for(Student student:lstStudent){
                if(id==student.getId()){
                    studentDetail=student;
                    break;
                }
            }
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