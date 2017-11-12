/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.Dao;
import Model.Event;
import Model.Landmark;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chaitali Patel
 */
@WebServlet(name = "InsertLandmarkServices", urlPatterns = {"/InsertLandmarkServices"})
public class InsertLandmarkServices extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertLandmarkServices</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertLandmarkServices at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String res;
        String landmarkId = request.getParameter("landmarkId");
        String landmarkName = request.getParameter("landmarkName");
        String latitude = request.getParameter("latitude");
        String longitude = request.getParameter("longitude");
        System.out.println("LandmarkId : "+ landmarkId + " LandmarkName : " + landmarkName + " Latitude : " + latitude + " Longitude : " + longitude);
        Landmark landM = new Landmark();
        landM.setLandmarkId(landmarkId);
        landM.setName(landmarkName);
        landM.setLatitude(Double.parseDouble(latitude));
        landM.setLongitude(Double.parseDouble(longitude));
        Dao d = new Dao();
        String msg = d.insertLandmark(landM);
        res = toJSONString(msg);
        out.println(res);
        out.close();
    }

    public String toJSONString(Object object) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setDateFormat("yyyy-MM-dd HH:mm:ss"); 								// UTC
        Gson gson = gsonBuilder.create();
        return gson.toJson(object);
    }

    public Landmark fromJSON(String string) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setDateFormat("yyyy-MM-dd HH:mm:ss"); 								// UTC
        Gson gson = gsonBuilder.create();

        return gson.fromJson(string, Landmark.class);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
