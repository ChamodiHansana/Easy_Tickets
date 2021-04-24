
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
<jsp:include page="Header.jsp"/>
</header>
  

<div class="topnav">
  <a  href="AdminMainPage.jsp">HOME</a>
  <a  href="InsetDoctorDeails.jsp">REGISTER DOCTOR</a>
  <a class="active" >UPDATE/DELETE DOCTOR</a>
  
  
  <div align="right"><button class="button button4">SIGN OUT</button>
  </div>
</div>
  

  




<br><br><br>



<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String sp=request.getParameter("sp");
String hp=request.getParameter("hp");
String date=request.getParameter("dat");
String time=request.getParameter("tim");
String venue=request.getParameter("ven");

%>
      


<div class="myForm"  >
  <form action="updateDocServlet"  method="post">
  <div style="text-align:center">
     <h2>UPDATE DOCTOR</h2>
</div>
<table  class="centerTable" >

    <tr>
		<td>Doctor ID:</td>
		<td ><input type="text" name="id" value="<%=id%>"></td>
	</tr>

	<tr>
		<td>Doctor Name:</td>
		<td ><input type="text" name="name" value="<%=name%>"></td>
		
	</tr>
	<tr>
		<td>Doctor Specialization:</td>
		<td ><input type="text" name="special" value="<%=sp%>"></td>
	</tr>
	<tr>
		<td>Hospital:</td>
		<td ><input type="text" name="hospital" value="<%=hp%>"></td>
	</tr>
	<tr>
		<td>Channel Day:</td>
		<td ><label class="day" ><b>Weekday</b></label>
		
    <input type="radio" name="date" VALUE="<%=date%>"  checked  tabindex="2">
    <label class="day"><b>Weekend</b></label>
    <input type="radio" name="date" VALUE="<%=date%>" checked tabindex="2" />
	</td>
	</tr>
	
	
	
	<tr>
		<td>Channel Time Period:</td>
		<td ><input type="text" name="timeP" value="<%=time%>"></td>
	</tr>

    <tr>
		<td>Venue:</td>
		<td ><input type="text" name="venue" value="<%=venue%>"></td>
	</tr>
	
	<tr>
	    
		<td><input type="submit" name="update" value="Update" ></td>
		
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