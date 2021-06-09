package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public List<Ad> title(String search) {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public List<Ad> budget(String title, double min, double max){
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public List<Ad> category(String search, String category) {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public List<Ad> filterAll(String search, String category, double min, double max) {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public List<Ad> filterAdsByUser(String user){
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    };
    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public Ad selectedAd(long id) {
        return null;
    }

    @Override
    public void update(Ad ad) {

    }

    @Override
    public void deleteEntry(Long ID) {

    }

    @Override
    public void editEntry(Long ID) {

    }


    @Override
    public List<Ad> selectedAd(Long ID) {
        return null;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//            1,
//            1,
//            "playstation for sale",
//            "This is a slightly used playstation"
//        ));
//        ads.add(new Ad(
//            2,
//            1,
//            "Super Nintendo",
//            "Get your game on with this old-school classic!"
//        ));
//        ads.add(new Ad(
//            3,
//            2,
//            "Junior Java Developer Position",
//            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
//        ));
//        ads.add(new Ad(
//            4,
//            2,
//            "JavaScript Developer needed",
//            "Must have strong Java skills"
//        ));
        return ads;
    }
}
