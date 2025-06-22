<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


   
<!DOCTYPE html>
<html>
  <head>
    <title>User Details</title>
    <link rel="stylesheet" href="css/diplayuser.css" />
  </head>
 <!-- Header -->
    <header>
      <nav class="navbar">
        <div class="logo">Lakrides</div>
        <ul class="nav-links">
          <li> 
            <a href="#benefits"><i class="fas fa-star"></i> Benefits</a>
          </li>
          <li>
            <a href="#book-ride"><i class="fas fa-car"></i> Book a Ride</a>
          </li>
          <li>
            <a href="#about-us"><i class="fas fa-info-circle"></i> About Us</a>
          </li>
          <li>
            <a href="login.html"><i class="fas fa-sign-in-alt"></i> Login</a>
          </li>
          <li>
            <a href="login.html"
              ><img
                src="img/User-avatar.svg.png"
                name="nav_img"
                alt="User"
                class="img1"
            /></a>
          </li>
        </ul>
      </nav>
    </header>

<section>
<div class="heading">
    <h1 class="head1"><b>Profile</b></h1>
</div>
<main>
    <div class="mainsec">
   <div class="container">
    <div class="avatar"><img src="img/avatar.jpg"  alt="User" class="avatarimg"></div><br><br>
    <!--Username display-->
    <div class="userdetails">
        <div class = "container1">
        <!-- Usinfg foreach loop of c tag library to retrieve customer details -->
        	<c:forEach var="cus" items="${cusDetails}">
        	
        	<c:set var="id" value="${cus.username }" /> 
        	<c:set var="add" value="${cus.address }" /> 
        	<c:set var="mail" value="${cus.email }" /> 
        	<c:set var="fname" value="${cus.fullname}" /> 
        	<c:set var="dob" value="${cus.dob}" /> 
        	
        	          
        	<div class="firstname">Username:${cus.username}</div><br><br>
            <div class="fullname">Fullname:${cus.fullname}</div><br><br>
            <div class="dob">Date of birth :${cus.dob} <!--Display first name--></div><br><br>
            <div class="adress">Address: ${cus.address } <!--Display first name--></div><br><br>
            <div class="proff">Email:${cus.email} <!--Display first name--></div><br><br>
            
        </c:forEach>
        
        <!-- Using url transfer of data to updatedetails.jsp so that user can update details while viewing it-->
        
        <c:url value="edituserdetails.jsp" var="cusupdate">
        <c:param name="user" value="${id}"></c:param>
        <c:param name="address" value="${add}"></c:param>
        <c:param name="mail" value="${mail}"></c:param>
        </c:url>
        
        <div><a href="${cusupdate}"><button value="Edit your profile" name="editprof" class="btnedit">Edit Your Profile</button></a>
        		<a href="deleteuser.jsp"><button value="Delete your account" name="editprof" class="btnedit">Delete Your Profile</button></a>
        </div>
        
        
</div>
</div>
</section>
  <!-- Footer -->
    <footer>
      <div class="footer-social">
        <a href="https://twitter.com" target="_blank"
          ><i class="fab fa-twitter"></i
        ></a>
        <a href="https://facebook.com" target="_blank"
          ><i class="fab fa-facebook-f"></i
        ></a>
        <a href="https://whatsapp.com" target="_blank"
          ><i class="fab fa-whatsapp"></i
        ></a>
        <a href="https://instagram.com" target="_blank"
          ><i class="fab fa-instagram"></i
        ></a>
      </div>
      <div class="footer-links">
        <a href="#contact-us">Contact Us</a>
        <a href="#about-us">About Us</a>
        <a href="#faqs">FAQs</a>
        <a href="#terms">Terms and Conditions</a>
      </div>
    </footer>
</main>

</html>

    