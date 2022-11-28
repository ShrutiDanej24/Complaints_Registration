package com.rcpit.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.data.ConnectDB;

/**
 * Servlet implementation class ULogin
 */
public class ULogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ULogin() {
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
		
		String umail=request.getParameter("email");
		String upass=request.getParameter("password");
		
		 try
		 {    	
			 	Connection conn = ConnectDB.connect();
				PreparedStatement stmt1 = conn.prepareStatement("select * from users where email=? and password=?");
				stmt1.setString(1,umail);
				stmt1.setString(2,upass);
				ResultSet rs = stmt1.executeQuery();
				if(rs.next())
				{
					GetSet.setEmail(umail);
					response.sendRedirect("welcomeuser.html");
				}
				else
				{
					response.sendRedirect("404error.html");
					
				}
		 }
		catch(Exception e)
		{
			System.out.println(e);
		}	
	}

}
