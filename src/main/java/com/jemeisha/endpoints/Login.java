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
            if(token==null){
                resp.sendRedirect("/login");
                return;
            }
            Cookie cookie = Util.createCustomerCookie(token);
            resp.addCookie(cookie);

            resp.sendRedirect("/customer-panel");

        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
