<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link href="css\styles.css" rel="stylesheet" type="text/css">
<link href="css\footer.css" rel="stylesheet" type="text/css">
<link href="css\header.css" rel="stylesheet" type="text/css">
<link href="css\form.css" rel="stylesheet" type="text/css">
<link href="css\table.css" rel="stylesheet" type="text/css">


<title>Echanneling</title>
</head>
<body>
<header>
<jsp:include page="Header.jsp" />
</header>
 
<div class="topnav">
  <a href="PatientMainPage.jsp" >HOME</a>
  <a class="active" >SEARCH DOCTOR</a>
  <a href="#">UPLOAD PRESCRIPTION</a>
  
  
  <div align="right"><button class="button button4">SIGN OUT</button>
  </div>
</div>

<div style="text-align:center">
<h2>Doctor Details</h2>	
</div>

<table   class="centerTable"  id="customers">
		    	
 
	<c:forEach var="doc" items="${doctorDetails}">
	
	<c:set var="id" value="${doc.id}"/>
	<c:set var="name" value="${doc.name}"/>
	<c:set var="sp" value="${doc.s}"/>
	<c:set var="hp" value="${doc.h}"/>
	<c:set var="dat" value="${doc.date}"/>
	<c:set var="tim" value="${doc.time}"/>
	<c:set var="ven" value="${doc.venue}"/>
	
	<tr>
		<td>Doctor ID:</td>
		<td >${doc.id}</td>
	</tr>
	<tr>
		<td>Doctor Name:</td>
		<td >${doc.name}</td>
	</tr>
	<tr>
		<td>Doctor Specialization:</td>
		<td >${doc.s}</td>
	</tr>
	<tr>
		<td>Hospital:</td>
		<td >${doc.h}</td>
	</tr>
	<tr>
		<td>Channel Day:</td>
		<td >${doc.date}</td>
	</tr>
	<tr>
		<td>Channel Time Period:</td>
		<td >${doc.time}</td>
	</tr>

    <tr>
		<td>Venue:</td>
		<td >${doc.venue}</td>
	</tr>
	
	</c:forEach>
	</table><br><br>
	
	<div style="text-align:center">
    
    <input type="button" value="GET A NUMBER">
    <input type="button" value="VIDEO CONFERENCE">
    </div><br><br>
	
	<footer class="footer-distributed">
    <jsp:include page="Footer.jsp"/>
	</footer>


</body>
</html>