package controller.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import util.StringUtils;
import model.UsersModel;
import util.ValidationUtil;


@WebServlet(asyncSupported = true, urlPatterns = { "/RegisterServlet" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private final DatabaseController dbController;
	
    public RegisterServlet() {
    	this.dbController = new DatabaseController();
       
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("Userid");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String retypePassword = request.getParameter("retypePassword");
        String role = "user";

        // Initialize the error message
        String errorMessage = "";

        // Check for non-empty fields
        if (username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            errorMessage = "Username, Email, and Password are required fields.";
        } 
        // Email validation
        else if (!email.matches("^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$")) {
            errorMessage = "Invalid email format.";
        }
        // Password strength validation: Example - at least 8 characters
        else if (password.length() < 8) {
            errorMessage = "Password must be at least 8 characters long.";
        }
        // Password match validation
        else if (!password.equals(retypePassword)) {
            errorMessage = "Passwords do not match.";
        }
        // Phone number validation: Example - 10 digits (modify as needed)
        else if (!phoneNumber.matches("\\d{10}")) {
            errorMessage = "Invalid phone number format.";
        }

        // If there is any error message, forward to the register page
        if (!errorMessage.isEmpty()) {
            request.setAttribute(StringUtils.MESSAGE_ERROR, errorMessage);
            request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
            return;
        }

        // If validation passes, create the user model and attempt to register
        UsersModel newUser = new UsersModel(userid, firstName, lastName, username, gender, email, phoneNumber, password, role);
        int result = dbController.registerUser(newUser);

        // Process the result of registration attempt
        if (result == 1) {
            response.sendRedirect(request.getContextPath() + StringUtils.URL_LOGIN);
        } else if (result == 0) {
            request.setAttribute("errorMessage", StringUtils.MESSAGE_ERROR_REGISTER);
            request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
        } else {
            request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_SERVER);
            request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
        }
    }
    
    }



