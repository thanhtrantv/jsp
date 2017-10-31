<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%="Time Server is "%>
<%
   out.println(date.toString());
%>
<%! LocalDateTime date=LocalDateTime.now(); %>