package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
    public int UpdateData(ProductBean bean)
    {
    	int rowcount=0;
    	try
    	{
    		Connection con=DBConnect.getCon();
    		PreparedStatement ps=con.prepareStatement("update product set pprice=?,pqty=? where pcode=?");
    		ps.setString(1, bean.getP_price());
    		ps.setString(2, bean.getP_quantity());
    		ps.setString(3, bean.getP_code());
    		rowcount=ps.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowcount;
    }
}
