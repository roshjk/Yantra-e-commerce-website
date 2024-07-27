<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product List</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/productLists.css">
</head>
<body>
    <jsp:include page="header.jsp" />

  <div class="bg-white rounded-lg shadow-md p-6">
    <div class="flex justify-between items-center mb-4">
      <h2 class="text-2xl font-semibold">Product List</h2>
      <a href="${pageContext.request.contextPath}/pages/addProducts.jsp" class="inline-flex items-center justify-center bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-4 rounded">
        Add New Product
      </a>
    </div>
    <div class="overflow-x-auto">
      <table class="min-w-full leading-normal" class="tab">
        <thead>
          <tr>
            <th class="text-left">Name</th>
            
            <th class="text-left">Price</th>
           
            <th class="text-right">Actions</th>
         
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Product 1</td>
            <td>$100</td>
            <td>
            <div class="flt">
              <button class="mr-2 bg-green-500 text-white py-1 px-2 rounded">View</button>
              <button class="mr-2 bg-blue-500 text-white py-1 px-2 rounded">Edit</button>
              <button class="bg-red-500 text-white py-1 px-2 rounded">Delete</button>
            </td>
        </div>
          </tr>

          <tr>
            <td>Product 2</td>
            <td>$100</td>
            <td>
            <div class="flt">
              <button class="mr-2 bg-green-500 text-white py-1 px-2 rounded">View</button>
              <button class="mr-2 bg-blue-500 text-white py-1 px-2 rounded">Edit</button>
              <button class="bg-red-500 text-white py-1 px-2 rounded">Delete</button>
            </td>
        </div>
          </tr>

          <tr>
            <td>Product 3</td>
            <td>$100</td>
            <td>
            <div class="flt">
              <button class="mr-2 bg-green-500 text-white py-1 px-2 rounded">View</button>
              <button class="mr-2 bg-blue-500 text-white py-1 px-2 rounded">Edit</button>
              <button class="bg-red-500 text-white py-1 px-2 rounded">Delete</button>
            </td>
        </div>
          </tr>
          <!-- Additional rows can be added here -->
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
