package com.example.ss10;

public class Customer {
    private String id;
    private String name;
    private String birth;
    private String address;
    private String pathImage;

    public Customer() {
    }

    public Customer(String id, String name, String birth, String address, String pathImage) {
        this.id = id;
        this.name = name;
        this.birth = birth;
        this.address = address;
        this.pathImage = pathImage;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPathImage() {
        return pathImage;
    }

    public void setPathImage(String pathImage) {
        this.pathImage = pathImage;
    }
}
