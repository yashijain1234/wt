<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First JSP Page</title>
</head>
<body>
<h1>First JSP Page</h1>
<h2><%="Welcome to JSP Page" %> </h2>
<%!
int getSum(int num1, int num2) {

return num1+num2;
}
%>
<%
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
%>

<h2>Sum of two numbers=<%=getSum(num1,num2)%></h2>

</body>
</html>