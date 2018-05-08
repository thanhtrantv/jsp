<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head><title>Hello word!!</title></head>
    <body>
        The site is working now!<br/>
        <%-- this is comment for my codes --%>
        <jsp:include page = "datetime.jsp" flush = "true" />

        xin chao!
    </body>
</html>