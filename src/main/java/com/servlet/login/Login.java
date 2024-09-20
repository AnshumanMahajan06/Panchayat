 package com.servlet.login;

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
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
			Connection con=null;
		String  mobn=request.getParameter("contact");
			String pw=request.getParameter("pass");
			
			try {
				//1) load the database Driver
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				//2) get Connection with the database
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
				
				//3) create Statement to execute query
				PreparedStatement pst = con.prepareStatement("SELECT * FROM people WHERE mobileno=? and password =?");
				pst.setString(1, mobn);
				pst.setString(2, pw);
				
				
				ResultSet rs=pst.executeQuery();
				if(rs.next()) {
					session.setAttribute("mobile",rs.getString("mobileno"));
					session.setAttribute("name",rs.getString("firstname"));
					dispatcher =request.getRequestDispatcher("Home.jsp");
				}else {
					request.setAttribute("status","failed");
					dispatcher =request.getRequestDispatcher("Login.jsp");
				}
				
				dispatcher.forward(request,response);
	}catch(SQLException | ClassNotFoundException e){
		e.printStackTrace(); 
		}
	}

}
