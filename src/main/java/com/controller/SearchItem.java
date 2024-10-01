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



@WebServlet("/searchitem")
public class SearchItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").trim());
		ItemDAO dao = new ItemDAO();
		try {
			Items item = dao.findById(id);
			request.setAttribute("item", item);
			RequestDispatcher dispatcher = request.getRequestDispatcher("finditem.jsp");
			dispatcher.forward(request, response);
		} 
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}