package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/creg")
public class CustomerRegistrationServlet extends HttpServlet
{
	@Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	 CustomerBean cb=new CustomerBean();
    	 
    	 cb.setUname(req.getParameter("c_uname"));
    	 cb.setPword(req.getParameter("c_pwd"));
    	 cb.setFname(req.getParameter("c_fname"));
    	 cb.setLname(req.getParameter("c_lname"));
    	 cb.setAddr(req.getParameter("c_addr"));
    	 cb.setMid(req.getParameter("c_mailid"));
    	 cb.setPhone(req.getParameter("c_mailid"));
    	 
    	 CustomerRegisterDAO crd=new CustomerRegisterDAO();
    	 int rowcount=crd.insertCustomerDetails(cb);
    	 
    	 if(rowcount>0)
    	 {
    		 req.setAttribute("msg", "Customer Registration Successful");
    		 req.getRequestDispatcher("CustomerRegistration.jsp").forward(req, res);
    	 }
    	 else
    	 {
    		 req.setAttribute("msg", "Customer Registration Not Successful");
    		 req.getRequestDispatcher("CustomerRegistration.jsp").forward(req, res);
    	 }
    }
}
