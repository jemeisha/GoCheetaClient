package com.jemeisha.endpoints;

import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;
import com.jemeisha.proxy.NoSuchAlgorithmException_Exception;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username=req.getParameter("username") ;
        String password=req.getParameter("password");
        String fname=req.getParameter("fname");
        String lname=req.getParameter("lname");
        String mobile=req.getParameter("mobile");

        LogicService logicService=new LogicService();
        Logic logic=logicService.getLogicPort();
        try {
            logic.register(username,password,fname,lname,mobile);
            res.sendRedirect("/login");
        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);
        }

    }
}
