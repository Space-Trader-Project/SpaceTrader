package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/profile/edit")
public class EditProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = DaoFactory.getUsersDao().findByUsername(username);


        if (user == null) {
            resp.sendRedirect("/profile");
            return;
        }
        String newpassword = req.getParameter("new_password");
        String confirmpassword = req.getParameter("confirm_password");
        boolean validAttempt =  Password.check(password, user.getPassword());
        if (validAttempt && newpassword.equals(confirmpassword)) {

            String firstName = req.getParameter("First_Name");
            String lastName = req.getParameter("Last_Name");
            String email = req.getParameter("email");

            String hashPassword = Password.hash(newpassword);
            User updatedUser = new User( user.getId(), username, email, hashPassword, firstName, lastName);
            req.getSession().setAttribute("user", updatedUser);
            DaoFactory.getUsersDao().update(updatedUser);
            resp.sendRedirect("/login");
        } else {
            resp.sendRedirect("/profile/edit");
        }
    }
}
