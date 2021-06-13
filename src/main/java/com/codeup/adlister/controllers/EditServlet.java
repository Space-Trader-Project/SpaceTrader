package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/ads/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long ID = Long.parseLong(request.getParameter("id"));
        Ad newAD = DaoFactory.getAdsDao().findById(ID);
        request.setAttribute("EditAll", newAD);
        request.getRequestDispatcher("/WEB-INF/editAd.jsp").forward(request, response);

    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String title = request.getParameter("title");
        String description =  request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String picture = request.getParameter("picture");
        long ID = Long.parseLong(request.getParameter("edit"));
        Ad newAD = DaoFactory.getAdsDao().findById(ID);
        newAD.setTitle(title);
        newAD.setDescription(description);
        newAD.setPrice(price);
        newAD.setQuantity(quantity);
        newAD.setPicture(picture);

            DaoFactory.getAdsDao().update(newAD);
        response.sendRedirect("/profile");

        }
}


