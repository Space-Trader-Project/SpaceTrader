package com.codeup.adlister.models;

public class Category {
    private long id;
    private long adId;
    private String categories;

    public Category(long adId, String categories){
//        this.id = id;
        this.adId = adId;
        this.categories = categories;
    }


    public long getAdId() {
        return adId;
    }

    public void setAdId(int adId) {
        this.adId = adId;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {

        this.categories = categories;
    }
}
