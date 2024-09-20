package com.servlet.register;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.servlet.details.DBconnection;

@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out= response.getWriter();
RequestDispatcher dispatcher = null;
		Connection con=null;
		
		String  firstn=request.getParameter("fname"); 
		String middlen=request.getParameter("mname");
		String lastn=request.getParameter("lname");
		String cnumber=request.getParameter("contact");
		String houseno=request.getParameter("makanno");
		String wardnum=request.getParameter("wardno");
		String pw=request.getParameter("pass");
		String gram=request.getParameter("village");
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			//3) create Statement to execute query
			PreparedStatement pst = 
			con.prepareStatement("INSERT INTO people (firstname,middlename,lastname,mobileno,makanno,wardno,password,village)"
					+ " VALUES(?,?,?,?,?,?,?,?)");
			
			pst.setString(1, firstn);
			pst.setString(2, middlen);
			pst.setString(3, lastn);
			pst.setString(4, cnumber);
			pst.setString(5, houseno);
			pst.setString(6, wardnum);
			pst.setString(7, pw);
			pst.setString(8, gram);
			
			//4) execute the query
			
			int count = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("Register.jsp");
			if(count > 0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed ");
			}
			dispatcher.forward(request, response);
			//5) close the database Connection
			con.close();
			
		} catch (SQLException | ClassNotFoundException e){
			e.printStackTrace();
		}
	}

}
