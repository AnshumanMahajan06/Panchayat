package com.userimage.entity;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig
@WebServlet("/addimage1")
public class addimage1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public addimage1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String mob=(String)session.getAttribute("mobile");
		Part file=request.getPart("uimage");
		String imageFileName=file.getSubmittedFileName();
		System.out.println("file name:"+imageFileName);
		String uploadPath="D:/JavaRivisionAdvance/GramPanchayatBambhada/src/main/webapp/images/"+imageFileName;
		System.out.println("Uploded path:"+uploadPath);
		//upload our selected image in image folder.
		try {
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			byte []data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		try { 
             Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			//3) create Statement to execute query
			PreparedStatement pst = 
			con.prepareStatement("INSERT INTO userimage (imagefilename,mobileno)  VALUES(?,?)");
			pst.setString(1, imageFileName);
			pst.setString(2, mob);
			int count = pst.executeUpdate();
			
			if(count > 0) {
			System.out.println("Image uploaded into database successfully");
			}
			else {
				System.out.println("Failed to upload image");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("Profile.jsp");
		rd.forward(request, response);
	
	}

}
