<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Aravind Fresh Farm Milk</title>
    <style>
      /* Basic Reset */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      html,
      body {
        height: 100%;
      }

      body {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
      }

      body {
        font-family: "Arial", sans-serif;
        background-color: #f4f9f5;
        color: #333;
        line-height: 1.6;
      }

      header {
        background-color: #4caf50;
        color: white;
        padding: 20px 0;
      }

      .header-flex {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        max-width: 1100px;
        margin: 0 auto;
        padding: 0 30px;
        flex-wrap: wrap;
      }

      .header-title {
        text-align: left;
      }

      .header-title h1 {
        font-size: 2.5rem;
        font-weight: bold;
        margin-bottom: 8px;
      }

      .header-contact {
        text-align: left;
        font-size: 1rem;
        background: rgba(255, 255, 255, 0.08);
        border-radius: 8px;
        padding: 10px 18px;
        margin-top: 5px;
        min-width: 230px;
        max-width: 300px;
        box-sizing: border-box;
      }

      @media (max-width: 800px) {
        .header-flex {
          flex-direction: column;
          align-items: flex-start;
          padding: 0 10px;
        }
        .header-contact {
          margin-top: 15px;
          width: 100%;
          max-width: 100%;
        }
        .header-title {
          width: 100%;
        }
      }

      /* Main Content */
      .main-container {
        padding: 30px;
        text-align: center;
        flex: 1 0 auto;
      }

      .order-button,
      .nav-button {
        padding: 15px 30px;
        font-size: 1.2rem;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-top: 20px;
      }

      .order-button:hover,
      .nav-button:hover {
        background-color: #388e3c;
      }

      .form-container {
        margin-top: 30px;
        text-align: center;
        flex: 1 0 auto;
      }

      .form-container input {
        padding: 10px;
        font-size: 1rem;
        margin: 10px 0;
        width: 250px;
        border-radius: 5px;
        border: 1px solid #ccc;
      }

      #orderForm form {
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      #orderForm label {
        font-weight: bold;
        text-align: left;
      }

      #orderForm input,
      #orderForm textarea,
      #orderForm select,
      #orderForm button {
        width: 250px;
        margin: 10px 0;
        display: block;
        box-sizing: border-box;
      }

      #orderForm textarea {
        resize: vertical;
        min-height: 60px;
        font-size: 1rem;
        border-radius: 5px;
        border: 1px solid #ccc;
        padding: 10px;
      }

      #orderForm {
        border: 2px solid #4caf50;
        border-radius: 10px;
        background: #fff;
        padding: 30px 40px;
        margin: 40px auto;
        max-width: 400px;
        box-shadow: 0 2px 8px rgba(76, 175, 80, 0.08);
      }

      footer {
        flex-shrink: 0;
        background-color: #4caf50;
        color: white;
        padding: 20px;
        text-align: center;
      }

      .hidden {
        display: none;
      }
    </style>
  </head>
  <body>
    <!-- Header Section -->
    <header>
      <div class="header-flex">
        <div class="header-title">
          <h1>Aravind Fresh Farm Milk</h1>
          <p>Pure & Organic Milk Delivered to Your Doorstep</p>
        </div>
        <div class="header-contact">
          <strong>Contact Us</strong><br />
          Sujatha Nagar 80 feet Road,<br />
          VSP, Andhra Pradesh, 530051<br />
          <strong>Phone:</strong> +91 9247279393<br />
          <strong>Email:</strong> info@aravindfreshfarm.com
        </div>
      </div>
    </header>

    <!-- Main Navigation Section -->
    <div class="main-container">
      <h2>Welcome to Aravind Fresh Farm Milk!</h2>
      <p>Your one-stop shop for organic milk. Please choose an action below:</p>

      <!-- Navigation Buttons -->
      <button class="nav-button" onclick="showSignUpForm()">Sign Up</button>
      <button class="nav-button" onclick="showLoginForm()">Login</button>
      <button class="nav-button" onclick="showOrderForm()">Order Milk</button>
      <button class="nav-button" onclick="showOrderHistory()">
        Order History
      </button>
    </div>

    <!-- Sign Up Form -->
    <div id="signUpForm" class="form-container hidden">
      <h2>Sign Up</h2>
      <input type="text" id="signUpName" placeholder="Full Name" />
      <input type="email" id="signUpEmail" placeholder="Email Address" />
      <input type="password" id="signUpPassword" placeholder="Password" />
      <button class="order-button" onclick="submitSignUp()">Sign Up</button>
      <button class="order-button" onclick="hideForm()">Cancel</button>
    </div>

    <!-- Login Form -->
    <div id="loginForm" class="form-container hidden">
      <h2>Login</h2>
      <input type="email" id="loginEmail" placeholder="Email Address" />
      <input type="password" id="loginPassword" placeholder="Password" />
      <button class="order-button" onclick="submitLogin()">Login</button>
      <button class="order-button" onclick="hideForm()">Cancel</button>
    </div>

    <!-- Order Milk Form -->
    <div id="orderForm" class="form-container hidden">
      <h2>Order Milk Online</h2>
      <form id="milkOrderForm">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required />

        <label for="phone">Phone Number:</label>
        <input
          type="tel"
          id="phone"
          name="phone"
          required
          pattern="[0-9]{10}"
          placeholder="10-digit number"
        />

        <label for="address">Delivery Address:</label>
        <textarea id="address" name="address" required></textarea>

        <label for="milkType">Select Milk Type:</label>
        <select id="milkType" name="milkType" required>
          <option value="">--Select--</option>
          <option value="cow">Cow Milk</option>
          <option value="buffalo">Buffalo Milk</option>
          <option value="goat">Goat Milk</option>
        </select>

        <label for="quantity">Quantity (Litres):</label>
        <input type="number" id="quantity" name="quantity" min="1" required />

        <button type="submit">Submit Order</button>
      </form>
    </div>

    <!-- Order History Section -->
    <div id="orderHistory" class="form-container hidden">
      <h2>Your Order History</h2>
      <p>Displaying orders for your account:</p>
      <ul id="orderList">
        <!-- Orders will be displayed here -->
      </ul>
      <button class="order-button" onclick="hideForm()">Back to Home</button>
    </div>

    <!-- Footer Section -->
    <footer>
      <p>&copy; 2025 Aravind Fresh Farm Milk | All Rights Reserved</p>
    </footer>

    <script>
      let orders = [];

      // Functions to show and hide forms
      function showSignUpForm() {
        hideAllForms();
        document.getElementById("signUpForm").classList.remove("hidden");
      }

      function showLoginForm() {
        hideAllForms();
        document.getElementById("loginForm").classList.remove("hidden");
      }

      function showOrderForm() {
        hideAllForms();
        document.getElementById("orderForm").classList.remove("hidden");
      }

      function showOrderHistory() {
        hideAllForms();
        document.getElementById("orderHistory").classList.remove("hidden");

        // Render the Orders in the Order History
        const orderList = document.getElementById("orderList");
        orderList.innerHTML = ""; // Clear the order list

        orders.forEach((order) => {
          const listItem = document.createElement("li");
          listItem.innerHTML = `${order.quantity} Litres of ${
            order.milkType
          } - Delivered on ${new Date().toLocaleDateString()}`;
          orderList.appendChild(listItem);
        });
      }

      function hideForm() {
        hideAllForms();
        document.getElementById("mainContainer").classList.remove("hidden");
      }

      function hideAllForms() {
        const forms = document.querySelectorAll(".form-container");
        forms.forEach((form) => form.classList.add("hidden"));
      }

      // Simulate user SignUp
      function submitSignUp() {
        alert("Sign Up successful! Welcome to Aravind Fresh Farm Milk.");
        hideForm();
      }

      // Simulate user Login
      function submitLogin() {
        alert("Login successful! Welcome back to Aravind Fresh Farm Milk.");
        hideForm();
      }

      // Handle Milk Order Submission
      document
        .getElementById("milkOrderForm")
        .addEventListener("submit", function (e) {
          e.preventDefault();

          const order = {
            fullName: document.getElementById("fullName").value,
            phone: document.getElementById("phone").value,
            address: document.getElementById("address").value,
            milkType: document.getElementById("milkType").value,
            quantity: document.getElementById("quantity").value,
          };

          // Store the order in the array
          orders.push(order);

          alert(
            `Your order of ${order.quantity} Litres of ${order.milkType} has been placed!`
          );
          document.getElementById("milkOrderForm").reset();
          showOrderHistory(); // Show order history after order is placed
        });
    </script>
  </body>
</html>
