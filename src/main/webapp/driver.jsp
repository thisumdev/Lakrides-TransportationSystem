<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Driver Details</title>
    <link rel="stylesheet" href="css/driver.css" />
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
      <div class="main-text">
        <h2 class="h2text">
          View your driver details in just a second. <br />We ensure your safety
          by performing the required backup checks on our drivers!!<br />
        </h2>
      </div>
      <div class="form-box">
        <form method="post" class="form1" action="DisplayDriverServlet">
          <input
            type="text"
            class="username"
            name="user"
            placeholder="Username"
          />
          <br />
          <input type="submit" class="submitbtn" value="Submit" />
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
     <script>
      document
        .querySelector(".form1")
        .addEventListener("submit", function (event) {
          var username = document.querySelector(".username").value; // Get the value of the username field

          // Check if the username field is empty
          if (username === "") {
            alert("Username cannot be empty");
            event.preventDefault(); // Prevent form submission if username is empty
            return;
          }

          // Check if the first letter of the username is 'D'
          if (username[0] !== "D") {
            alert("Username must start with the letter 'D'");
            event.preventDefault(); // Prevent form submission if the condition is not met
          }
        });
    </script>
  </body>
</html>