
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@include file="DBCON.jsp"%>

<%
  int id=Integer.parseInt(request.getParameter("tb1"));
  String ename=request.getParameter("tb2");
    String edesig=request.getParameter("tb3");
	    String email=request.getParameter("tb4");
  
    PreparedStatement pst=con.prepareStatement("update emp_inf set edesig=?,email=? where eid="+id);
	pst.setString(1,edesig);
	pst.setString(2,email);
    pst.executeUpdate();
    out.println("Record updated success");
%>
<a href="Page4.jsp">Click Here for update Page</a>

