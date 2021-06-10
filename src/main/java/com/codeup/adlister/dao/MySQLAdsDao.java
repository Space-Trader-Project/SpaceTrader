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
    public void deleteEntry(Long ID) {
        try {
            String insertQuery = "DELETE FROM spacetrader_db.ads WHERE id=?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1,ID);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);

        }
    }

    @Override
    public void editEntry(Long ID) {

    }

    @Override
    public List<Ad> selectedAd(Long ID) {
        return null;
    }
//    @Override
//
//    public void editEntry(Long ID) {
//
//    }

//    @Override
//    public List<Ad> selectedAd(Long ID) {
//        return null;

    public List<Ad> category(String search, String category){
        PreparedStatement stmt = null;
        String searchTitle = "%" + search + "%";
        try{
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ? AND id IN(SELECT ad_id FROM spacetrader_db.categories WHERE categories = ?)");
            stmt.setString(1, searchTitle);
            stmt.setString(2, category);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e){
            throw new RuntimeException("Error retrieving all ads by category.", e);
        }
    }

    @Override
    public List<Ad> filterAll(String search, String category, double min, double max){
        PreparedStatement stmt = null;
        String searchTitle = "%" + search + "%";
        try{
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ? AND (price BETWEEN ? AND ?) AND id IN(SELECT ad_id FROM spacetrader_db.categories WHERE categories = ?)");
            stmt.setString(1, searchTitle);
            stmt.setDouble(2, min);
            stmt.setDouble(3, max);
            stmt.setString(4, category);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e){
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

    public Ad selectedAd(long id) {
        return null;
    }

    @Override
    public Ad findById(long ID) {
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE id = ? LIMIT 1");

            stmt.setLong(1, ID);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Ad(rs.getLong("id"),
                        rs.getLong("User_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getString("picture"),
                        rs.getInt("quantity")
                );
            }


            return null;

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

        public List<Ad> filterAdsByUser (String user){
            PreparedStatement stmt;
            try {
                stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE user_id IN (SELECT id FROM spacetrader_db.users WHERE username Like ?)");
                stmt.setString(1, user);
                ResultSet rs = stmt.executeQuery();
                return createAdsFromResults(rs);
            } catch (SQLException e) {
                throw new RuntimeException("Error retrieving all ads.", e);
            }
        }
        @Override
        public List<Ad> title (String search){
            PreparedStatement stmt = null; //stmt = statement
            String searchTitle = "%" + search + "%"; //be able to pass string into LIKE query. By setting this to equal the POST method in the jsp's search bar, we should be able to get the search filter to work properly
            //^^ the "2" here is just to test if the string is being successfully called on by stmt. If it works, you should only see "test2" appear in the ad list (or product) page
            try {
                stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ?"); //get adds where title includes searchFilter
                stmt.setString(1, searchTitle);
                ResultSet rs = stmt.executeQuery();
                return createAdsFromResults(rs);
            } catch (SQLException e) {
                throw new RuntimeException("Error retrieving all ads.", e);
            }
        }

        @Override
        public List<Ad> budget (String search,double min, double max){
            PreparedStatement stmt = null;
            String searchFilter = "%" + search + "%";
            try {
//            stmt = connection.prepareStatement("SELECT * FROM ads WHERE title LIKE ? AND (price > ? AND price < ?)");
                stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ? AND (price BETWEEN ? AND ?)");
                stmt.setString(1, searchFilter);
                stmt.setDouble(2, min);
                stmt.setDouble(3, max);
                ResultSet rs = stmt.executeQuery();
                return createAdsFromResults(rs);
            } catch (SQLException e) {
                throw new RuntimeException("Error retrieving all ads.", e);
            }
        }

//        @Override
//        public List<Ad> category (String search, String category){
//            PreparedStatement stmt = null;
//            String searchTitle = "%" + search + "%";
//            try {
//                stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ? AND id IN(SELECT ads_id FROM spacetrader_db.categories WHERE category = ?)");
//                stmt.setString(1, searchTitle);
//                stmt.setString(2, category);
//                ResultSet rs = stmt.executeQuery();
//                return createAdsFromResults(rs);
//            } catch (SQLException e) {
//                throw new RuntimeException("Error retrieving all ads.", e);
//            }
//        }

//        @Override
//        public List<Ad> filterAll (String search, String category,double min, double max){
//            PreparedStatement stmt = null;
//            String searchTitle = "%" + search + "%";
//            try {
//                stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.ads WHERE title LIKE ? AND (price BETWEEN ? AND ?) AND id IN(SELECT ads_id FROM spacetrader_db.categories WHERE category = ?)");
//                stmt.setString(1, searchTitle);
//                stmt.setDouble(2, min);
//                stmt.setDouble(3, max);
//                stmt.setString(4, category);
//                ResultSet rs = stmt.executeQuery();
//                return createAdsFromResults(rs);
//            } catch (SQLException e) {
//                throw new RuntimeException("Error retrieving all ads.", e);
//            }
//        }

        @Override
        public Long insert(Ad ad){
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

//        @Override
//        public Ad selectedAd ( long id){
//            return null;
//        }

        @Override
        public void update(Ad ad){
            try {
                String insertQuery = "UPDATE spacetrader_db.ads SET user_id=?, title=?, description=?, price=?, picture=?, quantity=? WHERE id=?";
                PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
                stmt.setLong(1, ad.getUserId());
                stmt.setString(2, ad.getTitle());
                stmt.setString(3, ad.getDescription());
                stmt.setDouble(4, ad.getPrice());
                stmt.setString(5, ad.getPicture());
                stmt.setInt(6, ad.getQuantity());
                stmt.setLong(7, ad.getId());
                stmt.executeUpdate();
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
        }}



