package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewCustomerProductDAO 
{
	ArrayList<ProductBean> al=new ArrayList<ProductBean>();
    
    public ArrayList<ProductBean>retreivedata()
    {
        try
   	    {
   	     	 Connection con=DBConnect.getCon();
   		     PreparedStatement ps=con.prepareStatement("select * from product");
   		     ResultSet rs=ps.executeQuery();
   		 
   		     while(rs.next())
   		     {
   			    ProductBean pbean=new ProductBean();
   			    pbean.setP_code(rs.getString(1));
   			    pbean.setP_name(rs.getString(2));
   			    pbean.setP_company(rs.getString(3));
   			    pbean.setP_price(rs.getString(4));
   			    pbean.setP_quantity(rs.getString(5));
   			    al.add(pbean);
   		     }
   	    }
   	    catch(Exception e)
   	    {
   		   e.printStackTrace();
   	    }
   	    return al;
    }
}
