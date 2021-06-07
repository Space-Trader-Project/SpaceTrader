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
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> title(String search) {
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
    public List<Ad> budget(String search, double min, double max){
        PreparedStatement stmt = null;
        String searchFilter = "%" + search + "%";
        try{
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE title LIKE ? AND (price > ? AND price < ?)");
            stmt.setString(1, searchFilter);
            stmt.setDouble(2, min);
            stmt.setDouble(3, max);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e){
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO spacetrader_db.ads(user_id, title, description, price, picture, quantity) VALUES (?, ?, ?,  ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setDouble(4, ad.getPrice());
            stmt.setString(5, ad.getPicture());
            stmt.setInt(6, ad.getQuantity());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
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
    String query = "DELETE FROM ads WHERE id = ?";

    }


    @Override
    public void editEntry(Long ID) {

    }

    @Override
    public List<Ad> selectedAd(Long ID) {
        return null;
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
