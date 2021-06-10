package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories{
    private Connection connection;

    public MySQLCategoriesDao(Config config) {
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
    public List<Category> all() {
        PreparedStatement stmt = null; //stmt = statement
        try {
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.categories");
            ResultSet rs = stmt.executeQuery();
            return singleCategory(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all categories.", e);
        }
    }

    private List<Category> singleCategory(ResultSet rs) throws SQLException {
        List<Category> category = new ArrayList<>();
        while (rs.next()) {
            category.add(getCategory(rs));
        }
        return category;
    }

    private Category getCategory(ResultSet rs) throws SQLException {
        return new Category(
                rs.getLong("ad_id"),
                rs.getString("categories")
        );
    }

    @Override
    public List<Category> filter(String user) {
        PreparedStatement stmt;
        String searchFilter = "%" + user + "%";
        try {
            stmt = connection.prepareStatement("SELECT * FROM spacetrader_db.categories WHERE ad_id LIKE ?");
            stmt.setString(1, searchFilter);
            ResultSet rs = stmt.executeQuery();
            return singleCategory(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all categories.", e);
        }
    }

    @Override
    public Long insert(Category category) {
        try {
            String insertQuery = "INSERT INTO spacetrader_db.categories(ad_id, categories) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, category.getAdId());
            stmt.setString(2, category.getCategories());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new categories.", e);
        }
    }
    @Override
    public void deleteEntry(Long ID) {
        try {
            String insertQuery = "DELETE FROM spacetrader_db.categories WHERE ad_id=?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ID);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);

        }
    }
}
