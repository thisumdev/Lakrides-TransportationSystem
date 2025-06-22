<!DOCTYPE html>
<html>
  <head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/contactus.css" />
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
    <h3 class="headtext">Your opinions are the top priority for us!</h3>
    <container class="main">
      <div class="form1">
      <!-- Using a form to insert a customer remark which is validated with their username -->
        <form action="InsRemarksServlet" method="post" class="form11" >
          <div class="username">
            <input
              name="username"
              type="text"
              placeholder="Enter your username"
              class="user"
            />
          </div>
          <div class="descr">
            <textarea
              name="descri"
              class="descript"
              placeholder="Remark/Question"
            ></textarea>
          </div>
          <div class="btn">
            <input type="submit" class="submitbtn" value="Submit" />
          </div>
        </form>
      </div>
      <div class="form2">
            <!-- Using a form to update a customer remark which is validated with their username -->
        <form method="post" action="UpdateRemarkServ" class="form22">
          <div class="username2">
            <input
              name="username2"
              type="text"
              placeholder="Enter your username"
              class="user2"
            />
          </div>
          <div class="descr2">
            <textarea
              name="description"
              class="description2"
              placeholder="Remark/Question"
            ></textarea>
          </div>
          <div class="btn2">
            <input type="submit" class="submitbtn2" value="Update" />
          </div>
        </form>
      </div>
      <div class="form3">
            <!-- Using a form to delete a customer remark which is validated with their username -->
        <form method="post" action="DeleteRemarksServlet" class="form33">
          <div class="username3">
            <input
              name="username3"
              type="text"
              placeholder="Enter your username"
              class="user3"
            />
          </div>
          <div class="btn3">
            <input type="submit" class="submitbtn3" value="Delete" />
          </div>
        </form>
      </div>
    </container>
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