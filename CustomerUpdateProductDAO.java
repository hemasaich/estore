package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerUpdateProductDAO 
{
    public int BuyingProduct(ProductBean pb)
    {
    	int rowcount=0;
    	try
    	{
    		Connection con=DBConnect.getCon();
    		PreparedStatement ps=con.prepareStatement("update product set pqty=? where pcode=?");
    		ps.setString(1, pb.getP_quantity());
    		ps.setString(2, pb.getP_code());
    		rowcount=ps.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowcount;
    }
}
