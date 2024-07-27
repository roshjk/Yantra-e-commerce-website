package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.InquiryModel;
import model.PasswordEncryptionWithAes;
import model.Product;
import model.UsersModel;
import util.StringUtils;



public class DatabaseController {


	public Connection getConnection() throws SQLException, ClassNotFoundException {

		
		Class.forName(StringUtils.DRIVER_NAME);

		return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USERNAME,
				StringUtils.LOCALHOST_PASSWORD);
	}


	public int registerUser(UsersModel users) {

		try {
			
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_REGISTER_USER);
			
			System.out.println(users.getUserid());
			
			stmt.setString(1, users.getUserid());
			stmt.setString(2, users.getEmail());
			stmt.setString(3, users.getPassword());
			stmt.setString(4, users.getFirstName());
			stmt.setString(5, users.getLastName());
			stmt.setString(6, users.getGender());
			stmt.setString(7, users.getRole());
			
		
			int result = stmt.executeUpdate();

			
			if (result > 0) {
				return 1;
			} else {
				return 0; 
			}

		} catch (ClassNotFoundException | SQLException ex) {
			
			ex.printStackTrace();
			return -1; 
		}
	}



	
	public int getUserLoginInfo(String userId, String password) {
	    try {
	        
	        String query = "SELECT Role FROM users WHERE UserID=? AND Password=?";
	        PreparedStatement st = getConnection().prepareStatement(query);
	        st.setString(1, userId);
	        st.setString(2, password);

	     
	        ResultSet result = st.executeQuery();

	        if (result.next()) {
	            String roleDb = result.getString("Role");

	           
	            if (roleDb.equalsIgnoreCase("admin")) {
	                return 1; 
	            } else if (roleDb.equalsIgnoreCase("user")) {
	                return 2; 
	            } else {
	                return 4;
	            }
	        } else {
	            return 4;
	        }
	    } catch (SQLException | ClassNotFoundException ex) {
	        ex.printStackTrace();
	        return -2; 
	    }
	}
	
	
	 public int addProductToDatabase(Product product) {
	        try (Connection connection = getConnection();
	                PreparedStatement statement = connection.prepareStatement(
	                        "INSERT INTO Products (ProductID, Name, Description, Price, imglink) VALUES (?, ?, ?, ?, ?)")) {
	            statement.setString(1, product.getProductID());
	            statement.setString(2, product.getName());
	            statement.setString(3, product.getDescription());
	            statement.setDouble(4, product.getPrice());
	            statement.setString(5, product.getImgLink());
	            int result = statement.executeUpdate();
	            return result;
	        } catch (SQLException | ClassNotFoundException ex) {
		        ex.printStackTrace();
		        return 0; 
		    }
	    }
	 
	 public List<Product> getAllProducts() {
		    List<Product> products = new ArrayList<>();
		    String sql = "SELECT * FROM Products";

		    try (Connection connection = getConnection(); 
		         PreparedStatement statement = connection.prepareStatement(sql)) {
		        
		        ResultSet resultSet = statement.executeQuery();
		        while (resultSet.next()) {
		            String productId = resultSet.getString("ProductID");
		            String name = resultSet.getString("Name");
		            String description = resultSet.getString("Description");
		            double price = resultSet.getDouble("Price");
		            String imgLink = resultSet.getString("imglink");
		            
		            // Create a new Product object and set its fields
		            Product product = new Product();
		            product.setProductID(productId); // Assuming you have a setter method for ProductID
		            product.setName(name);           // Assuming you have a setter method for Name
		            product.setDescription(description); // Assuming you have a setter method for Description
		            product.setPrice(price);             // Assuming you have a setter method for Price
		            product.setImgLink(imgLink);         // Assuming you have a setter method for imgLink

		            // Add the populated Product object to the list
		            products.add(product);
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();

		    } catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		    return products;
		}
	 
	 public int inquiryuser(InquiryModel users) {

			try {
				
				PreparedStatement stmt = getConnection().prepareStatement(StringUtils.USER_INQUIRY);
				
				System.out.println(users.getFirstName());
				
				stmt.setString(1, users.getFirstName());
				stmt.setString(2, users.getLastName());
				stmt.setString(3, users.getEmail());
				stmt.setString(4, users.getPhoneNumber());
				stmt.setString(5, users.getFeedback());
				
				
			
				int result = stmt.executeUpdate();

				
				if (result > 0) {
					return 1;
				} else {
					return 0; 
				}

			} catch (ClassNotFoundException | SQLException ex) {
				
				ex.printStackTrace();
				return -1; 
			}
		}



	
}
	
	
