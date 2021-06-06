package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchValue = request.getParameter("searchValue"); //grabs search value from the input name value in index.jsp

        request.setAttribute("ads", DaoFactory.getAdsDao().filter(searchValue));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response); //filter method works finally :>



//        response.getWriter().println(searchValue);
//        boolean isPost = "GET".equals(request.getMethod());
//        response.getWriter().println(isPost);
    }
}
