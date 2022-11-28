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
 * Servlet implementation class AddHelplineNo
 */
public class AddHelplineNo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHelplineNo() {
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
		String umob=request.getParameter("Contact");
		
		try
		{
	    	Connection con=ConnectDB.connect();
		 	PreparedStatement ps2=con.prepareStatement("insert into helplineno values(?,?)");
		 	
		 	ps2.setString(1,uname);
		 	ps2.setString(2,umob);
		 
		 	int res=ps2.executeUpdate();
		 	if (res>0)
			{
				response.sendRedirect("successful.html");
			}
			else
			{
				//System.err.println("Registration failed");
				response.sendRedirect("404error.html");
			}		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
