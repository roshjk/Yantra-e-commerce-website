<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/admin.css">
</head>
<body>

    <div class="admin-wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Admin Panel</h2>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/addProducts.jsp">Manage Products</a></li>
                <li><a href="#">Orders</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/productLists.jsp">View Products</a></li>
            </ul>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <header>
                <h1>Dashboard</h1>
            </header>
            <div class="content">
                <p>Welcome to your Admin Dashboard. Here you can view and manage the website data.</p>
            </div>
            <div class="dashboard">
                <div class="dashboard-card" style="background: linear-gradient(135deg, #5f6191 10%, #FAD0C4 100%)">
                  <h3>Weekly Sales</h3>
                  <p class="dashboard-card-value">$15,000</p>
                  <p class="dashboard-card-status">Increased by 60%</p>
                </div>
                <div class="dashboard-card" style="background: linear-gradient(135deg, #A1C4FD 10%, #C2E9FB 100%);">
                  <h3>Weekly Orders</h3>
                  <p class="dashboard-card-value">45,634</p>
                  <p class="dashboard-card-status">Decreased by 10%</p>
                </div>
                <div class="dashboard-card" style="background: linear-gradient(135deg, #96E6A1 10%, #505545 100%);">
                  <h3>Visitors Online</h3>
                  <p class="dashboard-card-value">95,741</p>
                  <p class="dashboard-card-status">Increased by 5%</p>
                </div>
              </div>
              
                <div class="summary-boxes">
                  <div class="box">
                    <div class="box-info">
                      <h3>Customers</h3>
                      <p>23% increase in conversion</p>
                      <h2>43,981</h2>
                    </div>
                    <div class="box-chart">
                      <!-- Placeholder for chart, could be an image or a div for actual chart implementation -->
                    </div>
                  </div>
                  <div class="box">
                    <div class="box-info">
                      <h3>Orders</h3>
                      <p>6% decrease in earnings</p>
                      <h2>55,543</h2>
                    </div>
                    <div class="box-chart">
                      <!-- Placeholder for chart -->
                    </div>
                  </div>
                </div>
              </div>
              
        </div>
    </div>
</body>
</html>
    