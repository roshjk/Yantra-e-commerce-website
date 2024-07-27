<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
}
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #000080;
    color: white;
    padding: 10px 20px;
}

.main{
    margin: auto;
}
.heading{
    text-align: center;
    font-size: 46px;
    color: #000080;
    padding: 1rem;
    margin: 2rem;
}
.heading:hover{
    background-color: white;
}

.about .row{
    display:flex;
    align-items: center;
    gap: 2rem;
    flex-wrap: wrap;
    padding: 2rem 0;
    padding-bottom: 3rem;
} 
.about .row .star-container{
    flex:1 1 40rem ;
    position: relative;
}
.about .row .star-container img{
    width: 100%;
    border: radius 1rem; 
    box-shadow: 0 .5rem 1rem rgba(0, 0, 0, 0.1);
    height: 75vh;
    object-fit:cover;
}

.content h4{
    font-size:  56px;
    color: #000080;
    text-align: center;
}

.about .row .content{
    flex: 1 1 40rem;

}
.content p{
    text-align: center;
    color: black;
}
.buttom-1{
    display: flex;
    flex-direction: row;
}
</style>
</head>
<body>
<nav >
    <jsp:include page="header.jsp" />
</nav> 

<!--about us starts here-->
<section class="about" id="about">
    <h1 class="heading">About Us</h1><!--heading tag is used to define heading of different elements-->
    <div class="row">
        <div class="star-container">
            <img src="${pageContext.request.contextPath}/resourses/images/products/Yantra Logo.png">
        </div>
        <div class="content">
            <h4>Why Choose Us?</h4>
            <p>Yantra is your go-to source for high-quality headphones, with a carefully curated range of top-tier audio equipment to enhance your listening experience.
                we specialize in offering the best headphones from reputable companies known for their great sound quality, comfort, and durability. Yantra prioritizes its customers.
                We will reiterate our commitment to providing an amazing shopping experience, emphasizing customer happiness, product quality, and dependability.
                We prioritize transparency, ethics, and client happiness in everything we do. We will emphasize our basic values, including ethical business operations, environmental
                sustainability, and social responsibility.</p><!--p tag is used to insert a paragraph-->
        </div>
    </div>
</section>
</body>
</html>
