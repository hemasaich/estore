package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
    public CustomerBean CheckCustomerLogin(String uname,String pwd)
    {
    	CustomerBean cbean=null;
    	try
   	    {
   		   Connection con=DBConnect.getCon();
   		   PreparedStatement ps=con.prepareStatement("select * from customer where uname=? and pword=?");
   		   ps.setString(1, uname);
   		   ps.setString(2, pwd);
   		   ResultSet rs=ps.executeQuery();
   		 
   		   if(rs.next())
   		   {
   			 cbean=new CustomerBean();
   			 cbean.setUname(rs.getString(1));
   			 cbean.setPword(rs.getString(2));
   			 cbean.setFname(rs.getString(3));
   			 cbean.setLname(rs.getString(4));
   			 cbean.setAddr(rs.getString(5));
   			 cbean.setMid(rs.getString(6));
   			 cbean.setPhone(rs.getString(7));
   		   }
   	    }
   	    catch(Exception e)
   	    {
   	   	   e.printStackTrace();
   	    }
    	return cbean;	
    }
}
