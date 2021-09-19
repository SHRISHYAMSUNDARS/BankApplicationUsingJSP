<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String m=request.getParameter("msg");
if(m!=null){
	out.print(m);
}
%>
<form action="login.jsp">
Enter Username: <input type="text" name="uname"/><br/>
Enter Password: <input type="password" name="pwd"/><br/>
<input type="submit"/><br/>
New User: <a href="register.jsp">Click here</a>
</form>
</body>
</html>