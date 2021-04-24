<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Echanneling</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link href="css\styles.css" rel="stylesheet" type="text/css">
<link href="css\footer.css" rel="stylesheet" type="text/css">
<link href="css\header.css" rel="stylesheet" type="text/css">
<link href="css\form.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
<jsp:include page="Header.jsp" />
</header>
  

<div class="topnav">
  <a  href="AdminMainPage.jsp">HOME</a>
  <a class="active" >REGISTER DOCTOR</a>
  <a href="searchForUpdateDelete.jsp">UPDATE/DELETE DOCTOR</a>
  
  
  <div align="right"><button class="button button4">SIGN OUT</button>
  </div>
</div>
  
<br><br><br>


<div class="myForm"  >
  <form action="DocAddServlet"  method="post">
  <div style="text-align:center">
     <h2>REGISTER DOCTOR</h2>
</div>
<table  class="centerTable" >

    <tr>
		<td>Doctor ID:</td>
		<td ><input type="text" name="id" required placeholder="Enter Doctor ID..."></td>
	</tr>

	<tr>
		<td>Doctor Name:</td>
		<td ><input type="text" name="name" required placeholder="Enter Doctor Name..."></td>
	</tr>
	<tr>
		<td>Doctor Specialization:</td>
		<td ><input type="text" name="special" required placeholder="Doctor specialization.."></td>
	</tr>
	<tr>
		<td>Hospital:</td>
		<td ><input type="text" name="hospital" required placeholder="Enter Hospital..."></td>
	</tr>
	<tr>
		<td>Channel Day:</td>
		<td ><label class="day" ><b>Weekday</b></label>
    <input type="radio" name="date" value="Weekday" tabindex="2">
    <label class="day"><b>Weekend</b></label>
    <input type="radio" name="date" value="Weekend" tabindex="2" />
	</td>
		
    	
    
    
	</tr>
	<tr>
		<td>Channel Time Periode:</td>
		<td ><input type="text" name="timeP" required placeholder="Enter Time period.."></td>
	</tr>

    <tr>
		<td>Venue:</td>
		<td ><input type="text" name="venue" required placeholder="Enter Venue..."></td>
	</tr>
	
	<tr>
	    
		
		<td><input type="submit" name="submit" value="Add" ></td>
		
	</tr>
	

</table>

</form>
</div>
<br><br><br>


<footer class="footer-distributed">
<jsp:include page="Footer.jsp"/>		
</footer>

</body>
</html>