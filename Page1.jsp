<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>

<html>
<body>
  <form action="Page11.jsp" method="get">
  <center>
    <table align="center">
      <tr>
        <td>EMP ID</td>
        <td><input type="text" name="tb1"> </td>
        </tr>
        <tr>
          <td>NAME</td>
          <td><input type="text" name="tb2"></td>
          </tr>
          <tr>
            <td>DESIGNATION</td>
            <td><select name="tb3">
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
              <td><input type="text" name="tb4"></td>
              </tr>
              <tr>
                <td><input type="submit" value="SEND"></td>
                <td>   </td>
                </tr>

      </table>
    </form>
    <a href="index.html">HOME PAGE</a>
</body>
</html>
