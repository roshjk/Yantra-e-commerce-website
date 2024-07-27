<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>cart Page</title>
    <style>
body {
font-family: Arial, sans-serif;
margin: 0;
padding: 0;
}

.navbar-brand img {
    height: 50px;
}

.nav-links, .nav-icons {
    list-style: none;
    display: flex;
    color: aliceblue;
}

.nav-links li, .nav-icons a {
    margin-left: 20px;
}

.nav-links a {
    text-decoration: none;
    color: white;
    font-size: 16px;
}

.nav-icons img {
    height: 24px;
}

.burger {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.burger .bar {
    background-color: white;
    height: 3px;
    width: 25px;
    margin: 3px 0;
    transition: all 0.3s ease;
}

@media (max-width: 768px) {
    .nav-links, .nav-icons {
        flex-direction: column;
        position: absolute;
        right: 0;
        top: 60px;
        background-color: #333;
        width: 100%;
        display: none;
    }

    .nav-links li, .nav-icons a {
        margin: 10px;
        align-items: center;
        justify-content: center;
    }

    .burger {
        display: flex;
    }
}.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #1c038e;
    color: white;
    padding: 10px 20px;
}


  /* setting the size of the main table which has all the products and other details  */
table {
  width: 70%;
  border-collapse: collapse;
  margin: auto;
  margin-top: 20px;
}

/* setting the color and position of table head  */
th {
  text-align: left;
  padding: 8px;
  color: white;
  background-color: black;
  font-weight: bold;
}


/* adding padding to table data  */
td {
  padding: 10px 5px;
}


.cart-info {
  display: flex;
  flex-wrap: wrap;
}

.cart-info img {
  width: 300px;
}

#quantity {
  width: 50px;
}

.product-details {
  margin-left: 12px;
}

.product-details p {
  font-weight: bold;
}

.product-details a {
  text-decoration: none;
  color: orange;
  font-size: small;
  margin-top: auto;
}

/* this div wraps the checkout and hire buttons  */
.checkout-container {
  margin: auto;
  margin-bottom: 20px;
  margin-top: 20px;
  width: 70%;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  gap: 30px;
}

.checkout-container a {
  text-decoration: none;
  text-color: white;
}

.checkout-container button {
  color: white;
  background-color: black;
  width: 100px;
  height: 50px;
  border-radius: 18px;
}

.checkout-container button:hover {
  background-color: white;
}

.checkout-container button:active {
  background-color: black;
}
.a{

color: black;
}
    </style>
</head>
<body>
  <jsp:include page="header.jsp" />
    <div class="small-container">

      <table>
        <tr>
          <th>Product</th>
          <th>Total</th>
          <th>Subtotal</th>
        </tr>

        <tr>
          <td>
            <!-- the card info class contains individual products-->
            <div class="cart-info">
              <img src="P1.png" alt="">
              <div class="product-details">
                <p>Stereo Headset-levelU2</p>
                <small>Price</small>
                <ul>
                  <li>Sufficient battery capacity</li>
                  <li>lightweight 41.5-gram</li>
                  <li>crystal clear sound</li>
                  <li>Fits properly</li>
                </ul>
                <br>
                <a href="#">Remove</a>
              </div>
            </div>
          </td>
          <td>
            <input type="number" name="quantity" id="quantity" value="1">
          </td>  
          <td class = "subtotal">Rs 15,300</td>
        </tr>

        <tr>
          <td>
            <div class="cart-info">
              <img alt="logo" src="p8.jpg" width="100%" height="20%"/>
              <div class="product-details">
                <p>EarPods (USB-C)</p>
                <small>Price</small>
                <ul>
                  <li>speakers are engineered</li>
                  <li>high-quality audio</li>
                  <li>(USB-C) can also be used to control music</li>
                  <li>comfortable than other earbud-style </li>
                </ul>
                <br>
                <a href="#">Remove</a>
              </div>
            </div>
          </td>
          <td>
            <input type="number" name="quantity" id="quantity" value="1">
          </td>  
          <td class = "subtotal">Rs 5,600</td>
        </tr>

        <tr>
          <td>
            <div class="cart-info">
              <img src="p9_1.png" alt="">
              <div class="product-details">
                <p>HyperX Cloud Stinger 2 Greatness Refined</p>
                <small>Price</small>
                <ul>
                  <li>Spatial Audio</li>
                  <li>50mm drivers</li>
                  <li>Simple controls for audio</li>
                 
                </ul>
                <br>
                <a href="#">Remove</a>
              </div>
            </div>
          </td>
          <td>
            <input type="number" name="quantity" id="quantity" value="1">
          </td>  
          <td class = "subtotal">Rs 50,000</td>
        </tr>
      </table>
    </div>

    <!-- checkout container wraps the checkout options -->
    <div class="checkout-container">
     
      <button type="button" onclick="checkout()">Checkout</button>
    </div>
    
</body>
</html>
