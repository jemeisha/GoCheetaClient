package com.jemeisha.endpoints;

import com.jemeisha.proxy.Driver;
import com.jemeisha.proxy.Exception_Exception;
import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateDriver extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String driverId = req.getParameter("driverId");
        if(driverId == null){
            resp.sendRedirect("/admin/drivers");
            return;
        }
        LogicService service= new LogicService();
        Logic logic = service.getLogicPort();

        Driver d = logic.getDriverbyId(Integer.parseInt(driverId));
        if(d == null){
            resp.sendRedirect("/admin/drivers");
            return;
        }
        req.setAttribute("dId",driverId);
        req.setAttribute("fname",d.getDriverFirstName());
        req.setAttribute("lname",d.getDriverLastName());
        req.setAttribute("nic",d.getDriverNic());
        req.setAttribute("mobno",d.getDriverMobile());
        req.setAttribute("branch",d.getBranchId());
        req.setAttribute("vCat",d.getVehicle().getCategory().getCategoryId());
        req.setAttribute("vno",d.getVehicle().getVehicleNo());
        req.setAttribute("colour",d.getVehicle().getVehicleColour());
        req.setAttribute("noseats",d.getVehicle().getNoOfSeats());

        req.getRequestDispatcher("/admin/driverFormUpdate.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogicService service= new LogicService();
        Logic logic = service.getLogicPort();

        String driverId = req.getParameter("dId");
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String nic = req.getParameter("nic");
        String mobno = req.getParameter("mobno");
        String pass = req.getParameter("pass");
        String branchId = req.getParameter("branch");
        String vno = req.getParameter("vno");
        String oldVehicleNo = req.getParameter("oldVno");
        String vCatId = req.getParameter("vCat");
        String noseats = req.getParameter("noseats");
        String colour = req.getParameter("colour");

        try {
            logic.updateDriver(oldVehicleNo,driverId,fname,lname,nic,mobno,pass,branchId,vno,vCatId,noseats,colour);
            resp.sendRedirect("/admin/drivers");
        } catch (Exception_Exception e) {
            throw new RuntimeException(e);
        }
    }
}
