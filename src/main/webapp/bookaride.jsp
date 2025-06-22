<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Book a ride</title>
    <link rel="stylesheet" href="css/bookaride.css" />
  </head>
  <body>
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
    <main class="main-sec">
      <div class="img-sec">
        <img src="${pageContext.request.contextPath}/img/em03_driver_animation01_m_nomask_2x.gif" class="img" />
      </div>
      <div class="form-box">
        <form method="post" class="form1" action="BookaRideInsertServlet">
          <input
            type="text"
            name="location"
            placeholder="Pick up location"
            class="loc"
          />
          <br />
          <input
            type="text"
            name="destination"
            placeholder="Destination"
            class="dest"
          />
          <br />
          <label for="veh-type" class="vehity"
            >Choose your vehicle type:
          </label>
          <br />
          <input
            type="radio"
            name="veh-type"
            class="vehicletype"
            value="Car"
          />Car<br />
          <input
            type="radio"
            name="veh-type"
            class="vehicletype"
            value="Bike"
          />Bike<br />
          <input
            type="radio"
            name="veh-type"
            class="vehicletype"
            value="Van"
          />Van<br />
          <input
            type="radio"
            name="veh-type"
            class="vehicletype"
            value="Tuk Tuk"
          />Tuk Tuk<br />
          <input
            type="submit"
            class="submitbtn"
            value="Submit to pay"
          />
        </form>
      </div>
    </main>
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
  </body>
</html>