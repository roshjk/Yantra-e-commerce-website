package controller.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.DatabaseController;
import model.UsersModel;

import util.StringUtils;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final DatabaseController dbcontroller = new DatabaseController();
       
   
    public LoginServlet() {
        super();
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userid");
        String password = request.getParameter("password");

        int loginResult = dbcontroller.getUserLoginInfo(userName, password);
        
        System.out.println(loginResult);

        if (loginResult == 1) {
            // Create a session
            HttpSession session = request.getSession();
            // Set user ID attribute in session
            session.setAttribute("userid", userName);

            // Create a cookie for user ID
            Cookie cookie = new Cookie("userid", userName);
            // Set cookie expiration time (in seconds), e.g., 1 day
            cookie.setMaxAge(30 * 60);
            // Add cookie to response
            response.addCookie(cookie);

           
            response.sendRedirect(request.getContextPath() + StringUtils.ADNMIN_URL);
        } else if (loginResult == 2) {
           
            response.sendRedirect(request.getContextPath() + StringUtils.URL_HOME);
        } else if (loginResult == 4) {
            // Handle incorrect password
            request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_pass);
            request.setAttribute(StringUtils.USERNAME, userName);
            request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);
        } else {
            // Handle other errors
            request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_SERVER);
            request.setAttribute(StringUtils.USERNAME, userName);
            request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);
        }
    }
}
