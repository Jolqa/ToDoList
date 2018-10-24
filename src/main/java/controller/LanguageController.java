package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/language")
public class LanguageController extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException{
        // pobranie danych z requesta / zapis ustawień językowych
        String locale = request.getParameter("lang");
        if (locale != null && !locale.isEmpty()){
            Cookie localeCookie = new Cookie("lang", locale);
            response.addCookie(localeCookie);
        }
        response.sendRedirect("index.jsp");


    }
}
