package com.complaint.entity;

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

@WebServlet("/complaint")
public class complaint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		Connection con=null;
		HttpSession session=request.getSession();
		String fn=request.getParameter("fullname");
		 String num=(String)session.getAttribute("mobile");
		String ward=request.getParameter("wardno");
		String makan=request.getParameter("makanno");
		String dte=request.getParameter("cdate");
		String tm=request.getParameter("tim");
		String com=request.getParameter("comp");
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			//3) create Statement to execute query
			PreparedStatement pst = 
			con.prepareStatement("INSERT INTO com (fullname,phoneno,wardno,makano,date,time,complaint)"
					+ " VALUES(?,?,?,?,?,?,?)");
			pst.setString(1, fn);
			pst.setString(2,num);
			pst.setString(3,ward);
			pst.setString(4,makan);
			pst.setString(5, dte);
			pst.setString(6, tm);
			pst.setString(7,com);
			
			//4) execute the query
			
			int count = pst.executeUpdate();
			
			if(count > 0) {
				dispatcher =request.getRequestDispatcher("Home.jsp");
				
			}
			else {
				dispatcher =request.getRequestDispatcher("Complaint.jsp");
			}
			dispatcher.forward(request, response);
			//5) close the database Connection
			con.close();
			
			
		} catch (SQLException | ClassNotFoundException e){
			e.printStackTrace();
		}
	}

}
