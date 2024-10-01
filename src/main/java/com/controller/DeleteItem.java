package com.controller;

//import java.awt.PageAttributes.OrientationRequestedType;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ItemDAO;



@WebServlet("/deleteitem")
public class DeleteItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		 ItemDAO  dao = new ItemDAO();
		 try {
			boolean status = dao.deleteById(id);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Deleted successfully...");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "not deleted...");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewitems");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}