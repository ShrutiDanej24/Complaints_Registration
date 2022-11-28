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
 * Servlet implementation class Comment
 */
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
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
		
		int id=0;
		String department=request.getParameter("Department");
		String ucomment=request.getParameter("Comment");
		try
		{
			
	    	Connection con=ConnectDB.connect();
		 	PreparedStatement ps2=con.prepareStatement("insert into comment values(?,?,?,?)");
		 	
		 	ps2.setInt(1,id);
		 	ps2.setString(2,ucomment);
		 	ps2.setString(3,GetSet.getEmail());
		 	ps2.setString(4,department);

		 	int res=ps2.executeUpdate();
		 	if (res>0)
			{
				response.sendRedirect("usersuccessful.html");
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
