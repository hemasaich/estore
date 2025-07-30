package com.pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/viewproduct")
public class ViewCustomerProductServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	HttpSession session=req.getSession(false);
    	if(session==null)
    	{
    		req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
    	}
    	else
    	{
    		ViewCustomerProductDAO vpd=new ViewCustomerProductDAO();
    		ArrayList<ProductBean> al=vpd.retreivedata();
    		session.setAttribute("productlist2", al);
    		req.getRequestDispatcher("ViewCustomerProduct.jsp").forward(req, res);
    	}
    }
}
