<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Milk Dairy Order From Aravind Form</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <header>
      <h1>Aravind Fresh Farm Milk Dairy</h1>
      <p>Pure & Fresh Milk Delivered to Your Doorstep</p>
    </header>

    <main>
      <section class="form-section">
        <h2>Order Milk Online</h2>
        <form id="milkOrderForm">
          <label for="name">Full Name:</label>
          <input type="text" id="name" name="name" required />

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

        <div id="confirmationMessage" class="hidden">
          <h3>Thank you for your order!</h3>
          <p>We will contact you shortly.</p>
        </div>
      </section>
    </main>

    <footer>
      <p>&copy; 2026 Fresh Farm Milk Dairy. All rights reserved. </p>
    </footer>

    <script src="script.js"></script>
  </body>
  <!-- Firebase SDKs -->
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

  <script src="https://www.gstatic.com/firebasejs/9.24.0/firebase-app-compat.js"></script>
  <script src="https://www.gstatic.com/firebasejs/9.24.0/firebase-database-compat.js"></script>

  <script>
    // TODO: Replace with your Firebase config
    const firebaseConfig = {
      apiKey: "YOUR_API_KEY",
      authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
      databaseURL: "https://YOUR_PROJECT_ID.firebaseio.com",
      projectId: "YOUR_PROJECT_ID",
      storageBucket: "YOUR_PROJECT_ID.appspot.com",
      messagingSenderId: "YOUR_SENDER_ID",
      appId: "YOUR_APP_ID",
    };

    firebase.initializeApp(firebaseConfig);
    const database = firebase.database();
  </script>
</html>
