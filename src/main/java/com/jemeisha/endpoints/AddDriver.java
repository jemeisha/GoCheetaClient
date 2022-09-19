package com.jemeisha.endpoints;

import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;
import com.jemeisha.proxy.NoSuchAlgorithmException_Exception;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddDriver extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/driverForm.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String nic = req.getParameter("nic");
        String mobno = req.getParameter("mobno");
        String pass = req.getParameter("pass");
        String branchId = req.getParameter("branch");
        String vno = req.getParameter("vno");
        String vCatId = req.getParameter("vCat");
        String noseats = req.getParameter("noseats");
        String colour = req.getParameter("colour");

        LogicService service = new LogicService();
        Logic logic = service.getLogicPort();
        try {
            logic.registerDriver(fname,lname,nic,mobno,pass,branchId,vno,vCatId,noseats,colour);
            resp.sendRedirect("/admin/drivers");
        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
