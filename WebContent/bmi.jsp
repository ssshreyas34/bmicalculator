<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="java.util.*,java.sql.*,java.io.*" %>
   	    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
   	    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String email=request.getParameter("email");
String name=request.getParameter("name");
String query=request.getParameter("query");
%>
<sql:setDataSource var="abc"
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12356773"
user="sql12356773"
password="8vjvViSmCP"
/>
<sql:update dataSource="${abc}">
insert into bmidata(email,name,query)
values(?,?,?)
<sql:param value="${param.email}"/>
<sql:param value="${param.name}"/>
<sql:param value="${param.query}"/>
</sql:update>
</body>
</html>