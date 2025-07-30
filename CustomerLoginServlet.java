package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clog")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
     protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
     {
    	 String uname=req.getParameter("u_name");
         String pwd=req.getParameter("u_pwd");
         
         CustomerLoginDAO cld=new CustomerLoginDAO();
         CustomerBean cbean=cld.CheckCustomerLogin(uname, pwd);
         
         if(cbean==null)
         {
        	 req.setAttribute("msg", "Invalid Credentials");
        	 req.getRequestDispatcher("CustomerRegistration.jsp").forward(req, res);
         }
         else
         {
        	 HttpSession session=req.getSession();
        	 session.setAttribute("cbean", cbean);
        	 req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
         }
     }
}
