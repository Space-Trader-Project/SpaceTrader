package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "controllers.SearchAdsServlet", urlPatterns = "/ads/search")
public class SearchAdsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchValue = request.getParameter("searchValue"); //grabs search value from the input name value in index.jsp
        String maxPrice = request.getParameter("maxPrice");
        String minPrice = request.getParameter("minPrice");
//
//        request.setAttribute("ads", DaoFactory.getAdsDao().filterPrice(minPrice, maxPrice));

        //TODO: loop through the filtered ads list to also filter that by price and category if user chooses

//            for(Ad product : DaoFactory.getAdsDao().filter(searchValue)){
//                if(product.getPrice() >= minPrice & product.getPrice() <= maxPrice){
//                    filterPrice.add(product);
//                }
//            };
//            return filterPrice;
//List<Ad> searched = DaoFactory.getAdsDao().title(searchValue);
// List<Ad> searched;
//
            if (minPrice != null & maxPrice != null) {
                String searchKey = (String) request.getSession().getAttribute("search");
                double min = Integer.parseInt(request.getParameter("minPrice"));
                double max = Integer.parseInt(request.getParameter("maxPrice"));
                request.setAttribute("ads", DaoFactory.getAdsDao().budget(searchKey, min, max));
            } else {
                request.getSession().setAttribute("search", searchValue);
                request.setAttribute("ads", DaoFactory.getAdsDao().title(searchValue));
            }

//        request.setAttribute("ads", DaoFactory.getAdsDao().title(searchValue));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        }
}
//        response.getWriter().println(searchValue);
//        boolean isPost = "GET".equals(request.getMethod());
//        response.getWriter().println(isPost);
