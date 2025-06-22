<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <!DOCTYPE html>
<html>
  <head>
    <title>Driver Details</title>
    <link rel="stylesheet" href="css/displaydriverdetails.css" />
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
<section id="sec">
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
        <c:forEach var="driv" items="${driverDetails}">
        
        
        <c:set var="fname" value="${driv.fullname}" />
        <c:set var="vehnum" value="${driv.vehnumber}" />
        <c:set var="phone" value="${driv.phone}" />
        <c:set var="mail" value="${driv.mail}" />
        
            <div class="fullname">Full Name :${driv.fullname} <!--Display first name--></div><br><br>
            <div class="nic">Vehicle number:${driv.vehnumber} <!--Display first name--></div><br><br>
            <div Gender: class="gender">Phone number:${driv.phone} <!--Display first name--></div><br><br>
            <div Profession: class="proff">Mail:${driv.mail} <!--Display first name--></div><br><br>
         </c:forEach>
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