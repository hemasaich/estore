package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO
{
     public AdminBean checkAdminLogin(String u_name,String pwd)
     {
    	 AdminBean abean=null;
    	 try
    	 {
    		 Connection con=DBConnect.getCon();
    		 PreparedStatement ps=con.prepareStatement("select * from admin where uname=? and pword=?");
    		 ps.setString(1, u_name);
    		 ps.setString(2, pwd);
    		 ResultSet rs=ps.executeQuery();
    		 
    		 if(rs.next())
    		 {
    			 abean=new AdminBean();
    			 abean.setUname(rs.getString(1));
    			 abean.setPword(rs.getString(2));
    			 abean.setFname(rs.getString(3));
    			 abean.setLname(rs.getString(4));
    			 abean.setAddr(rs.getString(5));
    			 abean.setMid(rs.getString(6));
    			 abean.setPhone(rs.getString(7));
    		 }
    	 }
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
    	 }
    	 return abean;
     }
}
