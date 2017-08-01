<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*"%>

<html>
<body>


<%
out.println("Database connection test ... <br><br>");

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost", "root", " ");

java.sql.Statement st = con.createStatement();
ResultSet rs = st.executeQuery("show databases");
while (rs.next()) {
	String str = rs.getNString(1);
	out.println(str + "<br>");
	
	
}

%>

</body>
</html>