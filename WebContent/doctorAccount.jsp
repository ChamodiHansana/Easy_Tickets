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
  <a  href="AdminMainPage.jsp">HOME</a>
  <a  href="InsetDoctorDeails.jsp">REGISTER DOCTOR</a>
  <a class="active" >UPDATE/DELETE DOCTOR</a>
  
  
  <div align="right"><button class="button button4">SIGN OUT</button>
  </div>
</div>

<div style="text-align:center">
<h2>Doctor Details</h2>	
</div>

<table  class="centerTable" id="customers">
		    	
 
	<c:forEach  var="doc1" items="${doctorDetails1}">
	
	<c:set var="id" value="${doc1.id}"/>
	<c:set var="name" value="${doc1.name}"/>
	<c:set var="sp" value="${doc1.s}"/>
	<c:set var="hp" value="${doc1.h}"/>
	<c:set var="dat" value="${doc1.date}"/>
	<c:set var="tim" value="${doc1.time}"/>
	<c:set var="ven" value="${doc1.venue}"/>
	
	<tr>
		<td>Doctor ID:</td>
		<td >${doc1.id}</td>
	</tr>
	<tr>
		<td>Doctor Name:</td>
		<td >${doc1.name}</td>
	</tr>
	<tr>
		<td>Doctor Specialization:</td>
		<td >${doc1.s}</td>
	</tr>
	<tr>
		<td>Hospital:</td>
		<td >${doc1.h}</td>
	</tr>
	<tr>
		<td>Channel Day:</td>
		<td >${doc1.date}</td>
	</tr>
	<tr>
		<td>Channel Time Period:</td>
		<td >${doc1.time}</td>
	</tr>

    <tr>
		<td>Venue:</td>
		<td >${doc1.venue}</td>
	</tr>
	
	</c:forEach>
	</table><br><br>
	<c:url value="updateDoctor.jsp" var="docUpdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="sp" value="${sp}"/>
	<c:param name="hp" value="${hp}"/>
	<c:param name="dat" value="${dat}"/>
	<c:param name="tim" value="${tim}"/>
	<c:param name="ven" value="${ven}"/>

	
	
	</c:url>
	<div style="text-align:center">
    <a href="${docUpdate}">
    <input type="button" value="UPDATE"></a>
    
    
    <c:url value="deleteDoctor.jsp" var="docDelete">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="sp" value="${sp}"/>
	<c:param name="hp" value="${hp}"/>
	<c:param name="dat" value="${dat}"/>
	<c:param name="tim" value="${tim}"/>
	<c:param name="ven" value="${ven}"/>

	
	
	</c:url>
    
    <a href="${docDelete}">
    <input type="button" value="DELETE"></a>
    </div><br><br>
	
	<footer class="footer-distributed">
    <jsp:include page="Footer.jsp"/>
	</footer>


</body>
</html>