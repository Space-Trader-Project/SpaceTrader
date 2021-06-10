package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null; //stmt = statement
        try {
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> filter(String search) {
        PreparedStatement stmt = null; //stmt = statement
        String searchFilter = "%" + search + "%"; //be able to pass string into LIKE query. By setting this to equal the POST method in the jsp's search bar, we should be able to get the search filter to work properly
        //^^ the "2" here is just to test if the string is being successfully called on by stmt. If it works, you should only see "test2" appear in the ad list (or product) page
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE title LIKE ?"); //get adds where title includes searchFilter
            stmt.setString(1, searchFilter);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
//        if()
        try {
            String insertQuery = "INSERT INTO spacetrader_db.ads(title, description, price, picture, quantity, user_id) VALUES (?, ?, ?,  ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setDouble(3, ad.getPrice());
            stmt.setString(4, ad.getPicture());
            stmt.setInt(5, ad.getQuantity());
            stmt.setLong(6, ad.getUserId());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getDouble("price"),
                rs.getString("picture"),
                rs.getInt("quantity")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
