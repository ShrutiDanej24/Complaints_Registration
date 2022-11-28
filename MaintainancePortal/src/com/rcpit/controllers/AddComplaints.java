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
 * Servlet implementation class AddComplaints
 */
public class AddComplaints extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComplaints() {
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
		
		String status="pending";
		String title=request.getParameter("Title");
		String description=request.getParameter("Description");
		String department=request.getParameter("Department");
		String date=request.getParameter("Date");
		String image=request.getParameter("Image");
		
	     try
			{
		    	Connection con=ConnectDB.connect();
			 	PreparedStatement ps3=con.prepareStatement("insert into complaints values(?,?,?,?,?,?,?) ");
			 	
			 	ps3.setString(1,title);
			 	ps3.setString(2,description);
			 	ps3.setString(3,department);
			 	ps3.setString(4,date);
			 	ps3.setString(5,image);
			 	ps3.setString(6,GetSet.getEmail());
			 	ps3.setString(7,status);
			 	
			 	
			 	int res=ps3.executeUpdate();
			 	if (res>0)
				{
					
					//tget.setTitle(title);
					response.sendRedirect("usersuccessful.html");
					//System.err.println("Remainder added successfully   ");
					
				}
				else
				{
					response.sendRedirect("404error.html");
					//System.err.println(" failed  to add");
				}		
			}
			catch(Exception e)
			{
				System.out.println(e);
				e.printStackTrace();
			
			}

}
}
