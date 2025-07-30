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

@WebServlet("/Delete")
public class DeleteProductServlet extends HttpServlet
{
	@Override
    protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	HttpSession session=req.getSession(false);
    	if(session==null)
    	{
    		req.getRequestDispatcher("AdminLogin.html").forward(req, res);
    	}
    	else
    	{
    		String pcode=req.getParameter("pcode");
    		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productlist");
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
    		
    		DeleteProductDAO dpd=new DeleteProductDAO();
    		int rowcount=dpd.DeleteProduct(pb);
    		
    		if(rowcount>0)
    		{
    			req.setAttribute("msg", "Product Data Deleted");
    			req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
    		}
    		else
    		{
    			req.setAttribute("msg", "Product Data Not Deleted");
    			req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
    		}
    	}
    }
}
