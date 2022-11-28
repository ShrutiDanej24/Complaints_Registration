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
 * Servlet implementation class URegister
 */
public class URegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegister() {
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
		
		String uname=request.getParameter("Name");
		String umobno=request.getParameter("MobileNo");
		String uaddress=request.getParameter("Address");
		String uemail=request.getParameter("Email");
		String upassword=request.getParameter("Password");
		
		try
		{
			Connection conn = ConnectDB.connect();
			PreparedStatement stmt1 = conn.prepareStatement("insert into users values(?,?,?,?,?)");
			stmt1.setString(1,uname);
			stmt1.setString(2,umobno);
			stmt1.setString(3,uaddress);
			stmt1.setString(4,uemail);
			stmt1.setString(5,upassword);
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
