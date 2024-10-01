package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ItemDAO;
import com.model.Items;



@WebServlet("/saveitems")
public class SaveItems extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Items item = new Items();
		item.setName(request.getParameter("name"));
		item.setType(request.getParameter("type"));
		item.setQuantity(request.getParameter("quantity"));
		item.setPrice(request.getParameter("price"));
		
		ItemDAO dao = new ItemDAO();
		try {
			boolean status = dao.save(item);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Item Added...");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "Item not Added...");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("additem.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
			
	}

}
