package com.rcpit.data;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB 
{
	static Connection con = null;
	public static Connection connect()
	{
		try
		{
			if ( con == null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smartmaintainanceportal","root","");
			}
		}
		catch(Exception e)
		{
			//System.err.println(e);
			e.printStackTrace();
		}
		return con;
	}


}
