package model;

public class Product {
    private int id;
    private String name;
    private float price;
    private String Description;
    private String Producer;

    public Product() {
    }

    public Product(int id, String name, float price, String description, String producer) {
        this.id = id;
        this.name = name;
        this.price = price;
        Description = description;
        Producer = producer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getProducer() {
        return Producer;
    }

    public void setProducer(String producer) {
        Producer = producer;
    }
}
