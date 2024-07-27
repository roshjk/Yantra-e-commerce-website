package controller.filters;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AuthenticationFilter implements Filter {
    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
        this.context.log("AuthenticationFilter initialized");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // Get the requested URL
        String requestURI = httpRequest.getRequestURI();

        // Check if user is authenticated
        HttpSession session = httpRequest.getSession(false);
        if (session == null || session.getAttribute("userid") == null) {
            // User is not authenticated, redirect to login.jsp
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/pages/login.jsp");
            return;
        }

        // Get the current user's location
        String currentUserLocation = getCurrentUserLocation(requestURI);

        // Get the requested URL without context path
        String requestedURL = requestURI.substring(httpRequest.getContextPath().length());

        // Perform additional redirection logic
        if (currentUserLocation.equals("/pages/admin.jsp") && requestedURL.equals("/pages/home.jsp")) {
            // Redirect to admin.jsp if user is in admin.jsp and tries to access home.jsp
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/pages/admin.jsp");
            return;
        } else if (currentUserLocation.equals("/pages/home.jsp") && requestedURL.equals("/pages/admin.jsp")) {
            // Redirect to home.jsp if user is in home.jsp and tries to access admin.jsp
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/pages/home.jsp");
            return;
        }

        System.out.println("Request URI: " + requestURI);
        System.out.println("Current User Location: " + currentUserLocation);
        System.out.println("Requested URL: " + requestedURL);

        // Pass the request along the filter chain
        chain.doFilter(request, response);
    }

    private String getCurrentUserLocation(String requestURI) {
        if (requestURI.endsWith("/pages/admin.jsp")) {
            return "/pages/admin.jsp";
        } else if (requestURI.endsWith("/pages/home.jsp")) {
            return "/pages/home.jsp";
        } else {
            return "";
        }
    }

    @Override
    public void destroy() {

    }

    // Method to determine the current user's location
}
