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
  <a href="PatientMainPage.jsp" >HOME</a>
  <a class="active" >SEARCH DOCTOR</a>
  <a href="#">UPLOAD PRESCRIPTION</a>
  
  <div align="right">
  <button class="button button4">SIGN OUT</button>
  </div>
  
</div>
  

<br><br><br>

<div class="myForm"  >
  <form action="searchDoctorByPatientServlet"  method="post">
  

    Doctor Specialization:<br>
    <input type="text" id="Sp" name="spl" required placeholder="Enter specialization..."><br>
    
    
    Hospital :<br>
    <div style="text-align:center">
    <input type="text" id="Hp" name="hpl" required placeholder="Enter Hospital...."><br>
    </div>
    <div style="text-align:right">
    <input type="submit" value="Search">
    </div>
</form>
</div>
<br><br><br>



<footer class="footer-distributed">
<jsp:include page="Footer.jsp"/>
</footer>

</body>
</html>