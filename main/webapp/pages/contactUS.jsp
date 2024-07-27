<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact and Feedback Form</title>
    <style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif; /* Change font family */
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #1c038e;
        color: white;
        padding: 10px 20px;
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
    }

    /* CSS Styles for the form layout */
    .form-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 80%;
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .feedback-form {
        width: 100%;
        margin-bottom: 20px;
    }

    .feedback-form h2 {
        text-align: center;
        color: #000080; /* Change text color */
    }

    .feedback-form label {
        display: block;
        margin-bottom: 5px;
    }

    .feedback-form input[type="text"],
    .feedback-form textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .feedback-form textarea {
        resize: vertical;
    }

    .form-container input[type="submit"] {
        background-color: #000080; /* Change background color */
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    .form-container input[type="submit"]:hover {
        background-color: #ffffff; /* Change hover background color */
    }

    .contact-us {
        width: 100%;
        padding-left: 20px;
        color: #000080; /* Change text color */
    }

    .contact-us h2 {
        margin-top: 0;
    }

    .contact-us p {
        margin-top: 5px;
        margin-bottom: 5px;
    }

    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <div class="form-wrapper">
        <div class="form-container">
            <!-- Feedback Form -->
            <div class="feedback-form">
                <h2>Feedback Form</h2>
                <form action="${pageContext.request.contextPath}/inquiryServlet" method="post">
                    <label for="fname">First Name:</label>
                    <input type="text" id="fname" name="fname" required><br>
                    <label for="lname">Last Name:</label>
                    <input type="text" id="lname" name="lname" required><br>
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required><br>
                    <label for="pnumber">Phone:</label>
                    <input type="text" id="pnumber" name="pnumber" required><br>	
                    <label for="feedback">Feedback:</label>
                    <textarea id="feedback" name="feedback" rows="4" required></textarea><br>
                    <input type="submit" value="Submit Feedback">
                </form>
            </div>
            <!-- Contact Us -->
            <div class="contact-us">
                <h2>Contact Us</h2>
                <p>Phone Number: 9877543121 / 021-3345</p>
                <p>Email: yantrahouse@gmail.com</p>
            </div>
        </div>
    </div>
</body>
</html>
