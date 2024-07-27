package controller.servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import controller.DatabaseController;
import model.Product;
import util.StringUtils;

@WebServlet(asyncSupported = true, urlPatterns = { "/AddProductServlet" })
@MultipartConfig
public class AddProductServlett extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final DatabaseController dbController = new DatabaseController();

    public AddProductServlett() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("productid");
        String name = request.getParameter("productname");
        String description = request.getParameter("dess");
        double price = Double.parseDouble(request.getParameter("pricee"));
        Part image = request.getPart("img");
        String imageFilename = image.getSubmittedFileName();
        String uploadDirectory = getServletContext().getRealPath("/resourses/images/prod/");
        String uploadPath = uploadDirectory + imageFilename;
        String imgLink ="/resources/images/prod/" + imageFilename;
        
        
        
        
        
        
        try (FileOutputStream fos = new FileOutputStream(uploadPath);
             InputStream is = image.getInputStream()) {
            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Product product = new Product(productId, name, description, price, imgLink);
        int result = dbController.addProductToDatabase(product);
        if (result == 1) {
            request.getRequestDispatcher(StringUtils.ADNMIN_URL).forward(request, response);
        } else {
            request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);	
        }
    }								
}
