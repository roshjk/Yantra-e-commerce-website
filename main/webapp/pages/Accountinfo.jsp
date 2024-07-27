<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
}.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #000080;
    color: white;
    padding: 10px 20px;
}
.main{
padding:15px;

}
.topbar{
background-color: #000080;
overflow:hidden;
width:50%;
text-align: center;



}
.topbar h1{
margin:0;
padding: 20px 0;
}
.topbar a{
float:right;
color:white;
text-align:center;
padding: 20px 26px;
width:auto;


}
.sidebar{
background-color:red;
color: white;
height:100px;
}
.sidebar .a{
margin-left:10px;
display:block;
color:white;
padding-bottom: 10px;

}
.card{
position:relative;
display:flex;
flex-direction:column;
}
.content{
background-color:white;
}
.row{

width:50%;

}


</style>

</head>

<body>
<nav class="navbar">
        <div class="navbar-brand">
            <img src="Yantra Logo.png" alt="Shop Logo">
        </div>
        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#products">Products</a></li>
            <li><a href="#about">About Us</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
        <div class="nav-icons">
            <a href="#search"><img src="search.png" alt="Search"></a>
            <a href="#cart"><img src="cart.png" alt="Cart"></a>
            <a href="#user"><img src="profile.png" alt="User"></a>
        </div>
        <button class="burger">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </button>
    </nav>
    <div class="container">
    <div class="main">
    <div class="topbar">
    <a href="">Home</a>
    <a href="">Contact Us</a>
    <a href="">Logout</a>
    </div>
    <div class="row">
    <div class="col-md-4 mt-1">

    
    </div>
    <div class="col-md-8 mt-1">
    <div class="card mb-3 content">
    <h1 class="m-3 pt-3">About</h1>
    <div class="Card-body">
    <div class="row">
    <div class="col-md-3">
    <h5>Full Name</h5>
    </div>
    <div class="col-md-9 text-Secondary">
         Ram Karki
    </div>
    <button type="Edit">Edit</button>
    
    </div>
    <hr>
    <div class="row">
    <div class="col-md-3">
    <h5>Email</h5>
    </div>
    <div class="col-md-9 text-secondary">
    ramk56@gmail.com
    </div>
    <button type="Edit">Edit</button>
    </div>
    <hr>
    <div class="row">
    <div class="col-md-3">
    <h5>Phone</h5>
    </div>
    <div class="col-md-9 text-secondary">
    9837221490
    </div>
    <button type="Edit">Edit</button>
    </div>
    <hr>
    <div class="row">
    <div class="col-md-3">
    <h5>Address</h5>
    </div>
    <div class="col-9-md text-secondary">
    Islington college,kamalpokhari
    </div>
    
    </div>
    
    </div>
    
    </div>
    <hr>
    <div class="card mb-3 content">
    <h1 class="m-3">Recent orders</h1>
    <div class="Card-body">
    
    <div class="row">
    <div class="col-md-3">
    <h5>Product Name</h5>
    
    </div>
    <hr>
    <div class="col-md-9 text-secondary">
    Order Description
    </div>
    </div>
    </div>
    </div>
    
    </div>
    
    
    </div>
    </div>
    
    
    </div>
</body>
</html>