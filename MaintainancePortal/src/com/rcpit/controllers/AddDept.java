package com.rcpit.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.data.ConnectDB;

/**
 * Servlet implementation class AddDept
 */
public class AddDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String deptname=request.getParameter("DepartmentName");
		String taluka=request.getParameter("Taluka");
		String district=request.getParameter("District");
		String address=request.getParameter("Address");
		String mobno=request.getParameter("MobileNo");
		String email=request.getParameter("Email");
		String password=request.getParameter("Password");
		
		
		try
		{
			Connection conn = ConnectDB.connect();
			PreparedStatement stmt1 = conn.prepareStatement("insert into adddept values(?,?,?,?,?,?,?)");
			stmt1.setString(1,deptname);
			stmt1.setString(2,taluka);
			stmt1.setString(3,district);
			stmt1.setString(4,address);
			stmt1.setString(5,mobno);
			stmt1.setString(6,email);
			stmt1.setString(7,password);
			int rs=stmt1.executeUpdate();
			if(rs > 0)
			{
				response.sendRedirect("successful.html");
			}
			else
			{
				response.sendRedirect("404error.html");
				
			}
		}
		catch(Exception e)
		{
			//System.err.println(e);
			e.printStackTrace();
		}
	}
}
