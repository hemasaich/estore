package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
    public int insertProductDetails(ProductBean pbean)
    {
    	int rowcount=0;
    	try
    	{
    		Connection con=DBConnect.getCon();
    		PreparedStatement ps=con.prepareStatement("insert into product values (?,?,?,?,?)");
    		ps.setString(1, pbean.getP_code());
    		ps.setString(2, pbean.getP_name());
    		ps.setString(3, pbean.getP_company());
    		ps.setString(4, pbean.getP_price());
    		ps.setString(5, pbean.getP_quantity());
    		
    		rowcount=ps.executeUpdate();
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowcount;
    }
}
