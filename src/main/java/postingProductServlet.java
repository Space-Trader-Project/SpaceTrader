
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="postingProduct", urlPatterns = "/postingProduct")
public class postingProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="postingProduct", urlPatterns = "/postingProduct")
public class postingProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


            String category = request.getParameter("category");
            String description = request.getParameter("description");
            String condition = request.getParameter("condition");


//       request.setAttribute("pickedColor", pickedColor);

            request.setAttribute("newcolor", pickedColor);
//        response.sendRedirect("/newPickedColor.jsp");
            request.getRequestDispatcher("/newPickedColor.jsp").forward(request, response);


        }




   }





    }
}

