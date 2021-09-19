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
String n=request.getParameter("name");
String u=request.getParameter("uname");
String p=request.getParameter("pwd");
String pan=request.getParameter("pan");
String AccType=request.getParameter("Acc");
double amount=Double.parseDouble(request.getParameter("amount"));
long m=Long.parseLong(request.getParameter("mob"));
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/New";
	String username="SHRI";
	String password="Shri@123";
	Connection con=DriverManager.getConnection(url, username, password);
	String query="insert into SHRIBANK (Name,Username,Password,PancardNumber,AccountType,amount,mobile) values (?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, n);
	ps.setString(2, u);
	ps.setString(3, p);
	ps.setString(4, pan);
	ps.setString(5, AccType);
	ps.setDouble(6, amount);
	ps.setLong(7,m);
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("Registered Sucessfully");
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