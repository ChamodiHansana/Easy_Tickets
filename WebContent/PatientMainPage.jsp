<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Echanneling</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
  <a class="active" >HOME</a>
  <a href="searchDoctor.jsp" >SEARCH DOCTOR</a>
  <a href="#">UPLOAD PRESCRIPTION</a>
  
  <div align="right"><button class="button button4">SIGN OUT</button>
  </div>
</div>
  
<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="img\s2.png" style="width:270%">
  <img class="mySlides" src="img\s3.png" style="width:270%">
  <img class="mySlides" src="img\s4.png" style="width:270%">
  <img class="mySlides" src="img\s6.png" style="width:270%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

<footer class="footer-distributed">
<jsp:include page="Footer.jsp"/>
</footer>

</body>
</html>