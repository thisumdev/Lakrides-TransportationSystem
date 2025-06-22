<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/logins.css" />
  </head>
  <body>
    <main>
      <div class="form-box" id="loginform">
        <form method="post" action="UserLoginServlet">
          <h3>LOGIN</h3>
          <br />
          <input
            name="username"
            id="username"
            type="text"
            placeholder="Enter your username"
            class="textbox"
          />

          <input
            name="password"
            id="password"
            type="password"
            placeholder="Enter your pasword"
            class="textbox"
          />
          <br />
          <input name="remember" type="checkbox" class="rememberme" />
          <label for="rememberme">Remember me</label>

          <br /><br />
          <input type="submit" class="submitbtn" value="Login" />
          <br /><br />
          <p class="para1"><b>Don't have an account.</b><a href="signup.jsp">Sign up.</a><br><a href="adminlogin.jsp"><b>Log in as Admin</b></a></p>
        </form>
      </div>
    </main>
     <script>
      document
        .getElementById("loginform")
        .addEventListener("submit", function (event) {
          var name = document.getElementById("username").value; // Get input value
          var pass = document.getElementById("password").value; // Get input value

          if (name === "" || pass === "") {
            alert("All fields are required");
            event.preventDefault(); // Prevent form submission
          }
        });
    </script>
  </body>
</html>
    