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


@WebServlet("/edititem")
public class EditItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Items item  = new Items();
		item.setId(Integer.parseInt(request.getParameter("id")));
		item.setName(request.getParameter("name"));
		item.setType(request.getParameter("type"));
		item.setQuantity(request.getParameter("quantity"));
		item.setPrice(request.getParameter("price"));
		
		ItemDAO dao = new ItemDAO();
		try {
			boolean status = dao.edit(item);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Item Updated successfully...");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "Item not updated...");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("edititem.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}