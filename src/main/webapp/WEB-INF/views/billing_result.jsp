<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Generate the Billing</h2>
<hr>
<form action=""></form>
<pre>
First Name <input type="text" name="firstname" value="${contact.firstname}"/>
Last Name <input type="text" name="lastname" value="${contact.lastname}"/>
Email <input type="text" name="email" value="${contact.email}"/>
Mobile <input type="text" name="mobile" value="${contact.mobile}"/>
Product Name <input type="text" name="productname"/>
Amount <input type="text" name="amount"/>
        <input type="submit" value="Genarate the Bill"/>
</pre>
</body>
</html>