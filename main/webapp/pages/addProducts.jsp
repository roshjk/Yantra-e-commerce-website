<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/adminadd.css">
</head>
<body>
    <div class="max-w-2xl mx-auto p-6 bg-white rounded-lg shadow-md dark:bg-gray-900">
        <h1 class="text-3xl font-bold mb-6 dark:text-white">Add New Product</h1>
        <form class="grid grid-cols-2 gap-6" action="/YANTRAA/AddProductServlet" method="post" enctype="multipart/form-data">
            <div class="col-span-2 md:col-span-1">
                <label for="product-id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                    Product ID
                </label>
                <input id="product-id" class="input-style" placeholder="Enter product ID" required type="text" name="productid">
            </div>
            
            <div class="col-span-2 md:col-span-1">
                <label for="product-name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                    Product Name
                </label>
                <input id="product-name" class="input-style" placeholder="Enter product name" required type="text" name="productname">
            </div>
            <div class="col-span-2 md:col-span-1">
                <label for="product-price" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                    Price
                </label>
                <input id="product-price" class="input-style" placeholder="Enter product price" required type="number" name="pricee">
            </div>
            <div class="col-span-2 md:col-span-1">
                <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="product-image">
                    Product Image
                </label>
                <input class="file-input-style" id="product-image" type="file" name="img">
            </div>
            <div class="col-span-2 md:col-span-1">
                <label for="product-quantity" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                    Quantity
                </label>
                <input id="product-quantity" class="input-style" placeholder="Enter product quantity" required type="number" name="quann">
            </div>
            <div class="col-span-2">
                <label for="product-description" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                    Description
                </label>
                <textarea id="product-description" rows="4" class="textarea-style"
                    placeholder="Enter product description" name="dess"></textarea>
            </div>
            <div class="col-span-2 flex justify-end">
                <button type="submit" class="button-style">
                    Save Product
                </button>
            </div>
        </form>
    </div>
</body>
</html>










    