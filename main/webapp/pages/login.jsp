
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in to your account</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/login.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="flex h-screen items-center justify-center bg-gray-100">
        <div class="w-full max-w-md space-y-8">
            <div>
  
                <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Sign in to your account</h2>
            </div>
            <form action="/YANTRAA/LoginServlet" class="mt-8 space-y-6" method="POST">
            
            <c:if test="${not empty requestScope.errorMessage}">

			    <div style="color: white; background-color: #362a7b; padding: 15px; border-radius: 10px; margin-bottom: 15px;">
		
			        <c:out value="${requestScope.errorMessage}" />
		
			    </div>
		
			   </c:if>
            
            
                <input defaultValue="true" name="remember" type="hidden" />
                
                <div class="-space-y-px rounded-md shadow-sm">
                    <div>
                        <label class="sr-only" for="email-address">User Id</label>
                        <input
					    autoComplete="text"
					    class="relative block w-full appearance-none rounded-t-md border border-gray-300 px-3 py-2 text-gray-900 placeholder-gray-500 focus:border-indigo-500 focus:outline-none focus:ring-indigo-500"
					    id="email-address"
					    name="userid"
					    placeholder="User ID"
					    required
					    type="text"
					/>

                    </div>
                    <div>
                        <label class="sr-only" for="password">Password</label>
                        <input
                            autoComplete="current-password"
                            class="relative block w-full appearance-none rounded-b-md border border-gray-300 px-3 py-2 text-gray-900 placeholder-gray-500 focus:border-indigo-500 focus:outline-none focus:ring-indigo-500"
                            id="password"
                            name="password"
                            placeholder="Password"
                            required
                            type="password"
                        />
                    </div>
                    <br>
                </div>
                <div class="flex items-center justify-between">
                   
                </div>
                <div>
                    <button
                        class="group relative flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                        type="submit"
                    >
                        Sign in
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>