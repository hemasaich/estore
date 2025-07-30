package com.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/buyproduct")
public class CustomerUpdateProductServlet extends HttpServlet 
{
	@Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	HttpSession session=req.getSession(false);
    	
    	if(session==null)
    	{
    		req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
    	}
    	else
    	{
    		String pcode=req.getParameter("pcode");
    		String pprice=req.getParameter("pprice");
    		String pqty=req.getParameter("pqty");
    		String required=req.getParameter("req");
    	    String final_pqty=String.valueOf(Integer.parseInt(pqty)-Integer.parseInt(required));
    		
    		if(Integer.parseInt(required)>Integer.parseInt(pqty))
    		{
    			req.setAttribute("msg", "Your Required Quantity is Not Available");
    			req.getRequestDispatcher("req_qty.jsp").forward(req, res);
    		}
    		else
    		{
    			double FinalPrice=Integer.parseInt(required)*Integer.parseInt(pprice);
    			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productlist2");
        		ProductBean pb=null;
        		
        		Iterator<ProductBean> i=al.iterator();
        		while(i.hasNext())
        		{
        			pb=i.next();
        			if(pcode.equals(pb.getP_code()))
        			{
        				break;
        			}
        		}
        		pb.setP_quantity(final_pqty);
        	
        		CustomerUpdateProductDAO cupd=new CustomerUpdateProductDAO();
        		int rowcount=cupd.BuyingProduct(pb);
        		
        		if(rowcount>0)
        		{
        			req.setAttribute("FinalPrice", FinalPrice);
        			req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
        		}
    		}
    	}
    }
}
