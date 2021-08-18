<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>

<%

int id = Integer.parseInt(request.getParameter("tb1"));
//out.println(id);
String name = request.getParameter("tb2");
String desig=request.getParameter("tb3");
String email=request.getParameter("tb4");

       //jdbc code
try
{
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("Drivers are loaded sucessfully.");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb","admuser","admuser");
        System.out.println("Drivers are registered sucessfully.");

        PreparedStatement pst = con.prepareStatement("insert into emp_inf values(?,?,?,?)");
        pst.setInt(1,id);
        pst.setString(2,name);
        pst.setString(3,desig);
        pst.setString(4,email);
        int x = pst.executeUpdate();
        if(x>0)
        {
        out.println(" Record(s) inserted successfully.");
        response.sendRedirect("/jweb/Page1.jsp");
      }else{
        out.println("Record(s) insertion Failed.");
      }
}catch(Exception ex)
 {
   out.println(ex);
 }


%>
