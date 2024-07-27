<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronics Gadget Shop</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/style.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    
<!-- hero section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Welcome to Our Gadget Shop!</h1>
            <p>Check out the latest Headgears and Speakers right here.</p>
            <a href="${pageContext.request.contextPath}/ShowProductsServlet" class="hero-button">Shop Now</a>
        </div>
    </section>

 <!-- products section --> 
    <section class="product-section">
    <h2>Featured Products</h2>
    <div class="products-container">
        <div class="product-item">
            <img src="${pageContext.request.contextPath}/resourses/images/products/wire-earphone.jpg" alt="Product 1">
            <h3>Apple Earpods(Lightning Connector) </h3>
            <p>Rs.25000</p>
            <a href="#" class="product-button">Buy Now</a>
        </div>
        <div class="product-item">
            <img src="${pageContext.request.contextPath}/resourses/images/products/speaker.jpg" alt="Product 2" >
            <h3>Fluance Stereo Speaker</h3>
            <p>Rs.27000</p>
            <a href="#" class="product-button">Buy Now</a>
        </div>
        <div class="product-item">
            <img src="${pageContext.request.contextPath}/resourses/images/products/jbl-earphone.jpg" alt="Product 3" >
            <h3>JBL earbuds</h3>
            <p>Rs.4000</p>
            <a href="#" class="product-button">Buy Now</a>
        </div>
        <div class="product-item">
            <img src="${pageContext.request.contextPath}/resourses/images/products/beats.jpg" alt="Product 4" >
            <h3>Beats Studio Pro</h3>
            <p>Rs.22000</p>
            <a href="#" class="product-button">Buy Now</a>
        </div>
    </div>
    </section>

<!-- certification section --> 
    <section class="certifications">
        <h2>Our Certifications</h2>
        <p>We are certified by industry leaders to ensure the highest quality of service and products.</p>
        <div class="certificates-container">
            <div class="certificate">
                <img src="${pageContext.request.contextPath}/resourses/images/products/certificate.png" alt="Certificate 2">
                <p>CSA(Canadian Standards Association). <br> Alternative to UL certification.</p>
            </div>
            <div class="certificate">
                <img src="${pageContext.request.contextPath}/resourses/images/products/UL-certification.webp" alt="Certificate 1">
                <p>UL(Underwriters Laboratories). <br> Primarily concerned with electrical safety of your products.</p>
            </div>
            <div class="certificate">
                <img src="${pageContext.request.contextPath}/resourses/images/products/certificate-3.png" alt="Certificate 3">
                <p>WEEE(Waste Electrical & Electronic Equipment)</p>
            </div>
        </div>
    </section>
    <!-- about us section --> 
    <section class="about-us">
        <h2>About Our Team</h2>
        <div class="team-members">
            <div class="member">
                <img src="${pageContext.request.contextPath}/resourses/images/products/nishu.jpg" alt="nishu">
                <h3>Nishu Parajuli</h3>
                <p>Founder & Board Member</p>
                <p>Nishu Parajuli our team with over 10 years of experience in the tech industry.</p>
            </div>
            <div class="member">
                <img src="${pageContext.request.contextPath}/resourses/images/products/kritika.jpg" alt="Jane Smith">
                <h3>Kritika Siwakoti</h3>
                <p>Chief Technical Officer</p>
                <p>Kritika Siwakoti specializes in product development and innovation.</p>
            </div>
            <div class="member">
                <img src="${pageContext.request.contextPath}/resourses/images/products/roshni.jpg" alt="Sam Brown">
                <h3>Roshni Karki</h3>
                <p>Board Director</p>
                <p>Roshni drives our marketing strategy and business growth.</p>
            </div>
            <div class="member">
                <img src="${pageContext.request.contextPath}/resourses/images/products/sofi.jpg" alt="Lisa Ray">
                <h3>Swastika Basnet</h3>
                <p>Board Manager</p>
                <p>Swastika ensures our business operations run smoothly and efficiently.</p>
            </div>
        </div>
    </section>
     <!-- footer section --> 
     <footer>
     	<jsp:include page="footer.jsp" />
     </footer>
    
    

    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
    