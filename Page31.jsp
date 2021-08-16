<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@ include file="DBCON.jsp"%>
<%

String vone = request.getParameter("desig");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from emp_inf where edesig='"+vone+"'");
%>
<table align="center" border="1">
  <tr>
    <td>EMP-ID</td>
    <td>EMP-NAME</td>
    <td>DESIGNATION</td>
    <td>E-MAIL</td>
  </tr>
  <%
   while(rs.next())
   {
  %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
  </tr>
  <%}%>
</table>

<a href="Page3.jsp">HOME PAGE</a>
