package com.displayimage.entity;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@MultipartConfig
@WebServlet("/DisplayImage")
public class DisplayImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		 String mob=(String)session.getAttribute("mobile");
		//String iD=request.getParameter("imageid");
		//int id=Integer.parseInt(iD);
		//int imageId = 0 ;
		String photo = null;
		try {
			Connection con=null;
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			PreparedStatement pst = con.prepareStatement("SELECT * FROM userimage");
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				if(rs.getString("mobileno")==mob) {
				//imageId=rs.getInt("imageid");
				photo=rs.getString("imagefilename");
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd;
		//request.setAttribute("id",String.valueOf(imageId));
		request.setAttribute("img",photo);
		rd=request.getRequestDispatcher("profile.jsp");
		rd.forward(request, response);
	}

}
