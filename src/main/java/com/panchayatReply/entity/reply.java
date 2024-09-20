package com.panchayatReply.entity;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reply")
public class reply extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	RequestDispatcher dispatcher = null;
	Connection con=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
String re=request.getParameter("rep");
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/panchayatdatabase","root","root");
			
			//3) create Statement to execute query
			PreparedStatement pst = 
			con.prepareStatement("INSERT INTO com (reply) VALUES(?)");
			
			pst.setString(1,re);
			
			//4) execute the query
			
			int count = pst.executeUpdate();
			
			if(count > 0) {
				dispatcher =request.getRequestDispatcher("showcomplaint.jsp");
				
			}
			else {
				dispatcher =request.getRequestDispatcher("reply.jsp");
			}
			dispatcher.forward(request, response);
			//5) close the database Connection
			con.close();
			
			
		} catch (SQLException | ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	}

