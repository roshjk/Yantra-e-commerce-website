

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Your Website</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/header.css">
  <style>
  
    header {
      background-color: #1c038e;
      color: #fff;
      padding: 20px;
      justify-content: space-between;
      align-items: center;
    }

    .logo img {
      height: 50px;
    }

    nav ul {
      list-style-type: none;
      font-size: 15px;
    }

    nav ul li {
      display: inline-block;
      margin-right: 20px;
    }

    nav ul li a {
      text-decoration: none;
      color: #fff;
      font-size: 21px;
    }

    /* Styles for Product Page */
    .product {
      margin: 20px;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      text-align: center;
    }

    .product img {
      max-width: 50%;
      height: auto;
    }


    .footer-content {
      display: flex;
      justify-content: space-around;
    }

    .footer-section {
      flex: 1;
      margin: 0 20px;
    }

    .footer-section h2 {
      color: #fff;
    }

    .footer-section ul {
      list-style-type: none;
      padding: 0;
    }

    .footer-section ul li {
      margin-bottom: 10px;
    }

    .footer-bottom {
      text-align: center;
      margin-top: 20px;
    }

    .product-wrap {

      display: flex;
      flex-wrap: wrap;
    }

    .product {

      width: 400px;
      height: auto;
    }

    .foott li a {
      text-decoration: none;
      color: white;
    }

    .butts{
      padding: 10px;
      background-color: #192047cf;
      color: white;
      border-radius: 14px;
      cursor: pointer;
      

}
    
  </style>
</head>

<body>
  <header>
    
    <nav>
         <jsp:include page="header.jsp" />

    </nav>
  </header>

  <main class="product-wrap">
  
  
  <c:forEach var="prod" items="${productss}">
    <section class="product">
      <h2>${prod.name}</h2>
     
      <img src="${pageContext.request.contextPath}/resourses/images/products/${prod.imgLink}" alt="Product Image">
      <p> <b>Description: <br></b>${prod.description}</p><br>
      <p><b>Price: </b> RS. ${prod.price}</p><br>
      <button class="butts">Add to Cart</button>
    </section>
   </c:forEach>
    
    
    
  </main>

  <footer>
    <jsp:include page="footer.jsp" />
    
  </footer>
</body>

</html>