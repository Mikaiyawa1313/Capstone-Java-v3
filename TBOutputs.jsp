<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.Enumeration"%>
    
<!DOCTYPE html> 

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
<h3> -- Tournament Brackets -- </h3>

First place:  ${sessionScope.mainTourney.first.displayName}<br>
Second place:  ${sessionScope.mainTourney.second.displayName}<br>
Third place:  ${sessionScope.mainTourney.third.displayName}<br>
<table class="table table-hover">

<tr><th>Matches</th></tr>
<c:forEach var="round"  items="${sessionScope.mainTourney.rounds}">
<tr> <td>

<c:forEach var = "user" varStatus = "status" items ="${round.bracketList}"> 
<c:if test = "${status.count%2==0}">
 -vs-
</c:if>
<button type="button" class="btn btn-info active btn-success">${user.displayName}</button>
<c:if test = "${status.count%2==0}">
<br>
</c:if>
</c:forEach>

</td></tr>
</c:forEach>
</table>
</div>
<div>
<form action="/TBV3b/next" method="post"> 
<input type="submit" class="btn btn-info active btn-success" value="Next Round" />
</form>
</div>

</body>
</html>
