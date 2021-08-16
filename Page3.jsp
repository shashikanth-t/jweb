

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@include file="DBCON.jsp"%>
<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select distinct edesig from emp_inf");

%>
<form action="Page31.jsp" method="get">
<table align="center" boder=0>
  <tr>
    <td> Search Page</td>
  </tr>
  <tr>
    <td>DESIGNATION</td>
    <td><select name="desig">
        <option>Select</option>
        <%
        while(rs.next())
        {
        %>
        <option><%=rs.getString(1)%> </option>
        <%}%>
      </select>
    </td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" value="SEARCH"></td>
  </tr>
</table>
</form>
<a href="index.html">HOME PAGE</a>
