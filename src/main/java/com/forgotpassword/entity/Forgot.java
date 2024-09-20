package com.forgotpassword.entity;

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
import javax.servlet.http.HttpSession;

@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	
	RequestDispatcher dispatcher = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mob=request.getParameter("mobileno");
		String pass=request.getParameter("password");
		try {//load the database driver..
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//get connection with the database..
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");

		//3) create Statement to execute query
		PreparedStatement pst = 
		con.prepareStatement("UPDATE  people SET password=?  WHERE mobileno=?");
	
		pst.setString(1,pass);
		pst.setString(2,mob);
		//4) execute the query
		int count = pst.executeUpdate();

		if(count > 0) {request.setAttribute("status","success");
			dispatcher =request.getRequestDispatcher("Forgotpassword.jsp");
			
			
		}
		else {request.setAttribute("status", "failed");
			dispatcher =request.getRequestDispatcher("Forgotpassword.jsp");
			
		}
		dispatcher.forward(request, response);
		//5) close the database Connection
		//con.close();
			
		}catch(SQLException |ClassNotFoundException e) {
			e.printStackTrace();
			
		}
	}
	}


