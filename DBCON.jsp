<%@ page import="java.sql.*,javax.sql.*"%>
<%

Connection con=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
String surl="jdbc:mysql://localhost:3306/empdb";
String susername="admuser";
String spwd="admuser";
con=DriverManager.getConnection(surl,susername,spwd);

%>
