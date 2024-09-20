package com.panchayatmemberpassword.entity;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/panchayatpassword")
public class panchayatpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher dispatcher = null;
	Connection con=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  pw=request.getParameter("password"); 
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			//3) create Statement to execute query
			PreparedStatement pst = 
			con.prepareStatement("SELECT * FROM panchpassword WHERE password=?");
			pst.setString(1, pw);
			
			
			
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				dispatcher =request.getRequestDispatcher("database.jsp");
			}else {
				request.setAttribute("status","failed");
				dispatcher =request.getRequestDispatcher("panchmemberpage.jsp");
			}
			
			dispatcher.forward(request,response);
}catch(SQLException | ClassNotFoundException e){
	e.printStackTrace(); 
	}
			
	}
}
