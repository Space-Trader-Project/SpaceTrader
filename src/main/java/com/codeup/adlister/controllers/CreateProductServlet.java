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


            String title = request.getParameter("title");
            String category = request.getParameter("category");
            String description = request.getParameter("description");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String picture = request.getParameter("picture");
            double price = Double.parseDouble(request.getParameter("price"));


            Long user_id = Long.parseLong(request.getParameter("user_id"));


            //(user_id, title, description, price, picture, quantity)

            Ad newAd = new Ad(title, description, price, picture, quantity, user_id);
            DaoFactory.getAdsDao().insert(newAd);

            response.sendRedirect("/CreateAd");




        }

}
