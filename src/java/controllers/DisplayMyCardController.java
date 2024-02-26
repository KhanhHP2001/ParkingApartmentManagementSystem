/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import accounts.AccountDAO;
import accounts.AccountDTO;
import card.CardDAO;
import card.CardDTO;
import customers.CustomerDAO;
import customers.CustomerDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "DisplayMyCardController", urlPatterns = {"/DisplayMyCardController"})
public class DisplayMyCardController extends HttpServlet {

    public static final String ERROR = "ViewMyCard.jsp";
    public static final String SUCESSFUL = "ViewMyCard.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String userName = request.getParameter("userName");
            String idAccount = "";
            String cusID = "";
            AccountDAO dao = new AccountDAO();
            List<AccountDTO> listAccount = dao.getAccountByID(userName);
            HttpSession session = request.getSession();
            session.setAttribute("LIST_ACCOUNT_BY_USER", listAccount);
            for (AccountDTO account : listAccount) {
                idAccount = account.getIdAccount();
            }
            CustomerDAO dao1 = new CustomerDAO();
            List<CustomerDTO> listCus = dao1.getCusByID(idAccount);
            session.setAttribute("LIST_CUS_BY_ID", listCus);
            for (CustomerDTO cus : listCus) {
                cusID = cus.getCusID();
            }
            CardDAO dao3 = new CardDAO();
            List<CardDTO> list = dao3.getCardByID(cusID);
            session.setAttribute("LIST_MY_CARD_BY_ID", list);
            url = SUCESSFUL;
        } catch (Exception e) {
            log("Error at DisplayCUSController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
