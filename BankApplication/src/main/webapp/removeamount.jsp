<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String User=request.getParameter("username");
String Password=request.getParameter("password");
double Amount=Double.parseDouble(request.getParameter("amount"));
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/New";
	String username="SHRI";
	String password="Shri@123";
	Connection con=DriverManager.getConnection(url, username, password);
	String query="update SHRIBANK set amount=amount-? where Username=? and Password=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setDouble(1, Amount);
	ps.setString(2,User);
	ps.setString(3,Password);
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("Updated Sucessfully");
	}
	else {
		out.println("Not Updated");
	}
	con.close();
} catch (ClassNotFoundException | SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
%>
</body>
</html>