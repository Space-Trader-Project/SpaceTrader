package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public interface Categories {
    List<Category> all();
    List<Category> filter(String search);

    Long insert(Category category);
    void deleteEntry(Long ID);


    }
