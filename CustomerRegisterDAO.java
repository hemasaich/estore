package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO 
{
	public int insertCustomerDetails(CustomerBean cbean)
    {
    	int rowcount=0;
    	try
    	{
    		Connection con=DBConnect.getCon();
    		PreparedStatement ps=con.prepareStatement("insert into customer values (?,?,?,?,?,?,?)");
    		ps.setString(1, cbean.getUname());
    		ps.setString(2, cbean.getPword());
    		ps.setString(3, cbean.getFname());
    		ps.setString(4, cbean.getLname());
    		ps.setString(5, cbean.getAddr());
    		ps.setString(6, cbean.getMid());
    		ps.setString(7, cbean.getPhone());
    		
    		rowcount=ps.executeUpdate();
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowcount;
    }
}
