package com.pack1;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnect 
{
    private DBConnect() {}
	
	private static Connection con=null;
	
	static
	{
		try
		{
			Class.forName(DBinfo.driver);
			con=DriverManager.getConnection(DBinfo.dburl,DBinfo.dbuname,DBinfo.dbpwd);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getCon()
    {
   	 return con;
    }
}
