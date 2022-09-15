package com.jemeisha.endpoints;

import com.jemeisha.Util;
import com.jemeisha.proxy.Customer;
import com.jemeisha.proxy.Exception_Exception;
import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateOrder extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pickup= req.getParameter("pickup");
        String destination= req.getParameter("destination");

        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();

        Customer c= Util.getLoggedInCustomer(req);
        if (c!=null){
            try {
                logic.bookARide(c.getUsername(),Integer.parseInt(pickup),Integer.parseInt(destination));
                resp.sendRedirect("/customer-panel");
            } catch (Exception_Exception e) {
                throw new RuntimeException(e);
            }
        }else{
            resp.sendRedirect("/login");
        }
    }
}
