package controller.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import model.InquiryModel;
import util.StringUtils;

/**
 * Servlet implementation class inquiryServlet
 */

@WebServlet(asyncSupported = true, urlPatterns = { "/inquiryServlet" })
public class inquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final DatabaseController dbController;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public inquiryServlet() {
        this.dbController = new DatabaseController();
        // TODO Auto-generated constructor stub
    }


	

	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        String firstName = request.getParameter("fname");
	        String lastName = request.getParameter("lname");	        
	        String email = request.getParameter("email");
	        String phoneNumber = request.getParameter("pnumber");
	        String feedback = request.getParameter("feedback");
	        
	        System.out.println(feedback);
	        
	     

	        boolean isFirstNameValid = firstName.matches("[a-zA-Z]+");
	        boolean isLastNameValid = lastName.matches("[a-zA-Z]+");
	        boolean isEmailValid = email.matches("\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}\\b");
	        boolean isPhoneNumberValid = phoneNumber.matches("\\d{10}");
	        boolean isFeedbackValid = feedback.matches("^[a-zA-Z0-9.,'\"\\s]+$");

	        // Check if all validations passed
	        if (isFirstNameValid && isLastNameValid && isEmailValid && isPhoneNumberValid && isFeedbackValid) {
	            // All validations passed, create InquiryModel and add to database
	            InquiryModel inquirymodel = new InquiryModel(firstName, lastName, email, phoneNumber, feedback);
	            int result = dbController.inquiryuser(inquirymodel);

	            if (result == 1) {
	                // Redirect to success page if database insertion successful
	                request.getRequestDispatcher(StringUtils.CONTACTUS_URL ).forward(request, response);
	            } else {
	                // Handle database insertion failure
	                request.setAttribute("errorMessage", StringUtils.MESSAGE_ERROR_REGISTER);
	                request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
	            }

	        }
	 }

}
