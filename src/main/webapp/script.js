document
  .getElementById("milkOrderForm")
  .addEventListener("submit", function (e) {
    e.preventDefault();

    const name = document.getElementById("name").value;
    const phone = document.getElementById("phone").value;
    const address = document.getElementById("address").value;
    const milkType = document.getElementById("milkType").value;
    const quantity = document.getElementById("quantity").value;

    const orderRef = firebase.database().ref("milkOrders");
    const newOrder = orderRef.push();

    function launchRazorpay(name, phone, amount) {
      const options = {
        key: "YOUR_RAZORPAY_KEY", // Replace with your key
        amount: amount * 100, // In paise
        currency: "INR",
        name: "Fresh Farm Milk",
        description: "Milk Order Payment",
        handler: function (response) {
          alert("Payment successful. ID: " + response.razorpay_payment_id);
        },
        prefill: {
          name: name,
          contact: phone,
        },
        theme: {
          color: "#4CAF50",
        },
      };

      const rzp = new Razorpay(options);
      rzp.open();
    }

    newOrder
      .set({
        name,
        phone,
        address,
        milkType,
        quantity,
        timestamp: Date.now(),
      })
      .then(() => {
        document.getElementById("milkOrderForm").style.display = "none";
        document
          .getElementById("confirmationMessage")
          .classList.remove("hidden");
      })
      .catch((error) => {
        alert("Error saving order: " + error.message);
      });
  });
