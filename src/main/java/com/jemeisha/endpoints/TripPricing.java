package com.jemeisha.endpoints;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.jemeisha.proxy.Exception_Exception;
import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class TripPricing extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogicService logicService=new LogicService();
        Logic logic=logicService.getLogicPort();

        String pickup = req.getParameter("pickup");
        String dest = req.getParameter("dest");

        try {
            double price = logic.getTripPricing(Integer.parseInt(pickup),Integer.parseInt(dest));

            resp.setContentType("application/json");
            PrintWriter write = resp.getWriter();
            write.print("{\"price\":"+price+"}");
            write.flush();

        } catch (Exception_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
