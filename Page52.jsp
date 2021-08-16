
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@include file="DBCON.jsp"%>

<%
  int id=Integer.parseInt(request.getParameter("tb1"));
    PreparedStatement pst=con.prepareStatement("delete from emp_inf where eid="+id);
    pst.executeUpdate();
    out.println("Record Deletion success");
%>
<a href="Page5.jsp">Click Here for Deletion Page</a>
