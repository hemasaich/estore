package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
    public int DeleteProduct(ProductBean bean)
    {
    	int rowcount=0;
    	try
    	{
    		Connection con=DBConnect.getCon();
    		PreparedStatement ps=con.prepareStatement("delete from product where pcode=?");
    		ps.setString(1, bean.getP_code());
    		rowcount=ps.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowcount;
    }
}
