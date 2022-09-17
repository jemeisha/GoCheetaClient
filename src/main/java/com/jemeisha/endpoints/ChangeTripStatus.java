package com.jemeisha.endpoints;

import com.jemeisha.Util;
import com.jemeisha.proxy.Exception_Exception;
import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ChangeTripStatus extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        if(!Util.isDriverLoggedIn(req)){
//            resp.sendRedirect("/driver-login");
        // return;
//        }
        LogicService logicService = new LogicService();
        Logic logic = logicService.getLogicPort();
        String action = req.getParameter("action");
        String orderId = req.getParameter("orderId");

        try {
            logic.changeOrderStatus(Integer.parseInt(orderId),Integer.parseInt(action));
            resp.sendRedirect("/driver-panel");
            return;
        } catch (Exception_Exception e) {
            throw new RuntimeException(e);
        }

    }
}
