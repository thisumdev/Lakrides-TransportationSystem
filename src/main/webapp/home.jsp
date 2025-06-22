<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Transport System</title>
    <link rel="stylesheet" href="css/homes.css" />
    <!-- Font Awesome Link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
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
            <a href="bookaride.jsp"><i class="fas fa-car"></i> Book a Ride</a>
          </li>
          <li>
            <a href="contactus.jsp"><i class="fas fa-info-circle"></i> About Us</a>
          </li>
          <li>
            <a href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
          </li>
          <li>
            <a href="userdetails.jsp"
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

    <main class="main1">
      <h1 class="main-title">Lakrides at your doorstep</h1>

      <!-- Slider Section -->
      <div class="slider">
        <!-- Slide 1: User Rider -->
        <div class="slide active">
          <div class="slider-content">
            <div class="image-box">
              <img
                src="img/transport_system_theme.png"
                alt="User Rider"
                class="user-img"
              />
            </div>
            <div class="text-box">
              <p class="text1">
                "No matter where you are, we got you". <br />
                Introducing for the first time proudly in Sri Lanka.
              </p>
            </div>
          </div>
        </div>

        <!-- Slide 2: Driver -->
        <div class="slide">
          <div class="slider-content">
            <div class="image-box">
              <img
                src="img/Screenshot 2024-10-15 121548.png"
                alt="Taxi Driver"
                class="taxi-img"
              />
            </div>
            <div class="driver-text">
              <a href="driver.jsp" class="driver-link">Your Driver</a>
            </div>
          </div>
        </div>

        <!-- Slide 3: Offers and Benefits -->
        <div class="slide">
          <div class="slider-content">
            <div class="image-box">
              <img
                src="img/benefits2.jpg"
                alt="Offers and Benefits"
                class="benefits-img"
              />
            </div>
            <div class="text-box">
              <p class="text1">
                "We offer you various offers and benefits through our
                transactions."
              </p>
              <a href="benefits.html" class="driver-link">Benefits</a>
            </div>
          </div>
        </div>

        <!-- Slide 4: Terms and Conditions -->
        <div class="slide">
          <div class="slider-content">
            <div class="image-box">
              <img
                src="img/terms and con.png"
                alt="Terms and Conditions"
                class="terms-img"
              />
            </div>
            <div class="text-box">
              <p class="text1">
                "Refer our terms and conditions for more details."
              </p>
              <a href="terms.html" class="driver-link">Terms and Conditions</a>
            </div>
          </div>
        </div>

        <!-- Navigation Arrows -->
        <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
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
        <a href="contactus.jsp">Contact Us</a>
        <a href="#contactus.jsp">About Us</a>
        <a href="#faqs">FAQs</a>
        <a href="#terms">Terms and Conditions</a>
      </div>
    </footer>

    <script>
      let currentSlide = 0;
      const slides = document.querySelectorAll(".slide");

      function showSlide(index) {
        slides.forEach((slide, i) => {
          slide.classList.remove("active");
          if (i === index) {
            slide.classList.add("active");
          }
        });
      }

      function moveSlide(step) {
        currentSlide += step;
        if (currentSlide >= slides.length) currentSlide = 0;
        if (currentSlide < 0) currentSlide = slides.length - 1;
        showSlide(currentSlide);
      }

      showSlide(currentSlide);
    </script>
  </body>
</html>
