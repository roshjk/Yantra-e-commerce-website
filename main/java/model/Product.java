package model;

public class Product {
    private String productID;
    private String name;
    private String description;
    private double price;
    private String imgLink;
    
    // Constructors
    public Product() {
        // Default constructor
    }

    public Product(String productID, String name, String description, double price, String imgLink) {
        this.productID = productID;
        this.name = name;
        this.description = description;
        this.price = price;
        this.imgLink = imgLink;
    }

    // Getters and Setters
    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink;
    }
}
