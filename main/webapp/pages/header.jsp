<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <nav class="navbar">
        <div class="navbar-brand">
            <img src="${pageContext.request.contextPath}/resourses/images/products/Yantra Logo.png" alt="Shop Logo">
             <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/home.css">
        </div>
        <ul class="nav-links">
            <li><a href="${pageContext.request.contextPath}/pages/home.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/ShowProductsServlet">Products</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/aboutUs.jsp">About Us</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/contactUS.jsp">Contact Us</a></li>
           
             <li><a href="/YANTRAA/LogoutServlet">Logout</a></li>
        </ul>
        <div class="nav-icons">
            <a href="#search"><img src="${pageContext.request.contextPath}/resourses/images/products/search.png" alt="Search"></a>
            <a href="${pageContext.request.contextPath}/pages/cart.jsp"><img src="${pageContext.request.contextPath}/resourses/images/products/cart.png" alt="Cart"></a>
            <a href="#profile"><img src="${pageContext.request.contextPath}/resourses/images/products/profile.png" alt="profile"></a>
        </div>
        <button class="burger">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </button>
    </nav>