package controller.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import model.Product;
import util.StringUtils;


@WebServlet(asyncSupported = true, urlPatterns = { "/ShowProductsServlet" })
public class ShowProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final DatabaseController dbcontroller = new DatabaseController();
       
   
    public ShowProductsServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Product> productss = dbcontroller.getAllProducts();
		
		for(Product product : productss) {
		    // Print or process each product

		    // If you want to print all properties of the product
		    System.out.println(product.toString());
		}
		
		request.setAttribute("productss", productss);
		
		request.getRequestDispatcher(StringUtils.PRODUCT_URL).forward(request, response);
	}

}
