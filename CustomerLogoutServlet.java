package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class CustomerLogoutServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
    	HttpSession session=req.getSession(false);
    	if(session==null)
    	{
    		req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
    	}
    	else
    	{
    		req.getRequestDispatcher("CustomerLogout.jsp").forward(req, res);
    	}
    }
}
