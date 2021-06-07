package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> title(String search);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    List<Ad> budget(String search, double min, double max);

    Ad selectedAd(long id);
    void update(Ad ad);

    void deleteEntry (Long ID);

    void editEntry (Long ID);
    List<Ad> selectedAd (Long ID);

}
