package com.jemeisha.endpoints;

import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;
import com.jemeisha.proxy.NoSuchAlgorithmException_Exception;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username= req.getParameter("username");
        String password=req.getParameter("password");

        LogicService logicService=new LogicService();
        Logic logic=logicService.getLogicPort();

        try {

            String token= logic.login(username,password);
            Cookie cookie = new Cookie("login_cookie",token);
            cookie.setMaxAge(2592000);//log-off time(1 month)
            cookie.setHttpOnly(true);
            cookie.setPath("/");
            resp.addCookie(cookie);

            resp.setContentType("text/html");//setting the content type
            PrintWriter pw=resp.getWriter();//get the stream to write the data

//writing html in the stream
            pw.println("<html><body>");
            pw.println("Welcome to servlet");
            pw.println("</body></html>");

        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
