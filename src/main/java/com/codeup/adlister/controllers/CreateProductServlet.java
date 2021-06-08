package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="PostingProduct", urlPatterns = "/CreateAd")
public class CreateProductServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/CreateAd.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

            String category = request.getParameter("category");
            String description = request.getParameter("description");
            String quantity = request.getParameter("quantity");
            String picture = request.getParameter("picture");
            String title = request.getParameter("title");

            Ad newAd = new Ad(category, description, quantity, picture, title);
            DaoFactory.getAdsDao().insert(newAd);

            response.sendRedirect("/CreateAd");





        }

}
