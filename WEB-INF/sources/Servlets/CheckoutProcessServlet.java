package Servlets;
/* A servlet to display the contents of the MySQL movieDB database */

import java.io.*;
import java.net.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import SQLClasses.*;

public class CheckoutProcessServlet extends HttpServlet {
  public String getServletInfo() {
    return "Checkout Process Servlet Servlet";
  }

  // Use http GET

  public void doGet(HttpServletRequest request, HttpServletResponse response)
  throws IOException, ServletException {
    System.out.println("Checkout Process Servlet");
    String first_name = (String)request.getParameter("first_name");
    String last_name = (String)request.getParameter("last_name");
    String cc_number = (String)request.getParameter("cc_number");
    CreditCard cc = CreditCard.getCreditCardByCredentials(first_name,last_name,cc_number);
    if(cc != null)
      request.getRequestDispatcher("/WEB-INF/sources/checkout_success.jsp").forward(request, response);
    else
      request.getRequestDispatcher("/WEB-INF/sources/checkout_failure.jsp").forward(request, response);
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response)
  throws IOException, ServletException {
    doGet(request, response);
  }
}