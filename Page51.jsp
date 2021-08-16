<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@include file="DBCON.jsp"%>

<%
  int id=Integer.parseInt(request.getParameter("tb1"));
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from emp_inf where eid="+id);
  if(rs.next())
  {
%>
<html>
<body>
  <form action="Page52.jsp" method="get">
  <center>
    <table align="center">
      <tr>
        <td>EMP ID</td>
        <td><input type="text" name="tb1" value="<%=rs.getInt(1)%>" readonly> </td>
        </tr>
        <tr>
          <td>NAME</td>
          <td><input type="text" name="tb2" value="<%=rs.getString(2)%>"></td>
          </tr>
          <tr>
            <td>DESIGNATION</td>
            <td><select name="tb3">
              <option><%=rs.getString(3)%></option>
              <option>SELECT</option>
              <option>JR PRG</option>
              <option>SR PRG</option>
              <option>Team Lead</option>
              <option>HR</option>
              </select>
             </td>
            </tr>
            <tr>
              <td>EMAIL-ID </td>
              <td><input type="text" name="tb4" value="<%=rs.getString(4)%>"></td>
              </tr>
              <tr>
                <td><input type="submit" value="DELETE"></td>
                <td>   </td>
                </tr>

      </table>
    </form>
</body>
</html>
<%}else{
%>
<h2>
No Record Found...!"
</h2>
<%}%>

<a href="Page5.jsp">Delete PAGE</a>
