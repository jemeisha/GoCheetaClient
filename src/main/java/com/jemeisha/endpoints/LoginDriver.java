package com.jemeisha.endpoints;

import com.jemeisha.Util;
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

public class LoginDriver extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/driverLogin.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username= req.getParameter("username");
        String password=req.getParameter("password");

        LogicService logicService=new LogicService();
        Logic logic=logicService.getLogicPort();

        try {
            System.out.println(username);
            System.out.println(password);
            String token= logic.loginDriver(username, password);
            System.out.println(token);
            if(token==null){
                resp.sendRedirect("/driver-login");
                return;
            }
            Cookie cookie = Util.createDriverCookie(token);
            resp.addCookie(cookie);

            resp.sendRedirect("/driver-panel");


        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
