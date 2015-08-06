Enter file contents <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.Enumeration"%>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head><body>
<div class="container-fluid">
<h2>${my_title}</h2>
<h2> -- Tournament Participant Inputs -- </h2>
<h3>check the box next to the names of the participants in this tournament. </h3>
<br><br>

<form action="/TBV3b/TBInputServlet" method="post"> 


<c:forEach var="name" items="${displayNames}">
<input TYPE="checkbox" name="participants" VALUE="${name}"> ${name} <br>
</c:forEach>
<br>
<INPUT TYPE=submit name=submit Value="Submit">
</form>
 

</div>
</body>
</html>
