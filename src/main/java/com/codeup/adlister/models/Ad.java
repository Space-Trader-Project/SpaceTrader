package com.codeup.adlister.models;

public class Ad {

    private long id;
    private long userId;
    private String title;
    private String description;
    //add price, category, and picture
    private double price;
    private String category;
    private String picture;
    private int quantity;
    //    private final String condition;

    public Ad(long id, long userId, String title, String description, double price, String picture, int quantity) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
//        this.category = category;
        this.picture = picture;
        this.quantity = quantity;
    }

    public Ad(long userId, String title, String description, double price, String category, String picture, int quantity) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
//        this.category = category;
        this.picture = picture;
        this.quantity = quantity;
    }



    //tims creating an add page
    public Ad(String category, String description, String condition, String picture, String title) {
        this.category = category;
        this.description = description;
        this.quantity = quantity;
        this.picture = picture;
        this.title = title;
    }



    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

//    private double price;
      private String category;
//    private String picture;
//    private int quantity;

    public void setPrice(double price){
        this.price = price;
    }
    public double getPrice(){
        return price;
    }

    public void setCategory(String category){
        this.category = category;
    }
    public String getCategory(){
        return category;
    }

    public void setPicture(String picture){
        this.picture = picture;
    }
    public String getPicture(){
        return this.picture;
    }

    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    public int getQuantity(){
        return quantity;
    }
}
