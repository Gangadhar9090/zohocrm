<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  <%@ include file="menu.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <h2>List all contacts</h2>
     <table>
        <tr>
              <th>id</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Email</th>
              <th>Lead Source</th>
              <th>Mobile</th>
              <th>Billing</th>
        </tr>
    
<c:forEach items="${contacts}" var="contact">
<tr>
<td><a href="getcontactInfo?id=${contact.id}">${contact.id}</a></td>
<td><a href="getcontactInfo?id=${contact.id}">${contact.firstname}</a></td>
<td><a href="getcontactInfo?id=${contact.id}">${contact.lastname}</a></td>
<td><a href="getcontactInfo?id=${contact.id}">${contact.email}</a></td>
<td><a href="getcontactInfo?id=${contact.id}">${contact.leadsource}</a></td>
<td><a href="getcontactInfo?id=${contact.id}">${contact.mobile}</a></td>
<td><a href="getContactById?id=${contact.id}">Generate Bill</a></td>


</tr>

</c:forEach>
 </table>
</body>
</html>