package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewAdInfoServlet", urlPatterns = "/ads/info")public class ViewAdInfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long ID = Long.parseLong(request.getParameter("id"));
        Ad singleAd = DaoFactory.getAdsDao().findById(ID);
        Long userId = singleAd.getUserId();
        User user = DaoFactory.getUsersDao().findByUserId(userId);
        request.setAttribute("singleAd", singleAd);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/ads/info.jsp").forward(request, response);
    }
}
