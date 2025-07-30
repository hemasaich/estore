package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	@Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	HttpSession session=req.getSession(false);
    	if(session==null)
    	{
    		req.getRequestDispatcher("AdminLogin.html").forward(req, res);
    	}
    	else
    	{
    		ProductBean pbean=new ProductBean();
    		AddProductDAO obj=new AddProductDAO();
    		pbean.setP_code(req.getParameter("pcode"));
    		pbean.setP_name(req.getParameter("pname"));
    		pbean.setP_company(req.getParameter("pcom"));
    		pbean.setP_price(req.getParameter("pprice"));
    		pbean.setP_quantity(req.getParameter("pqty"));
    		
    		int rowcount=obj.insertProductDetails(pbean);
    		
    		if(rowcount>0)
    		{
    			req.setAttribute("msg", "Product Details Added Succesfully");
    			req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
    		}
    		else
    		{
    			req.setAttribute("msg", "Product Details Not Inserted");
    			req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
    		}
    	}
        
    }
}
