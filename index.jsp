<%@page import="java.sql.*,
 javax.sql.*,
 java.io.IOException,
 javax.servlet.http.*,
 javax.servlet.*,
 java.util.*,
 SQLClasses.*"
%>

<%/*
	test comment.  
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection connection =
      DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedb", "root", "root");
    Statement select = connection.createStatement();
    ResultSet result = select.executeQuery("Select * from creditcards where ID LIKE '87%'");
    out.println("The results of the query");

    ResultSetMetaData  metadata;
    metadata = result.getMetaData();
    out.println("There are "+metadata.getColumnCount()+" columns <br>");
    for (int i=1; i<=metadata.getColumnCount(); i++){
      out.println("Type of column "+i+" is " + 
      metadata.getColumnTypeName(i) + "<br>");
    }
    while (result.next()){
      out.print("First_name  = "+result.getString(2));
      out.print("  Last_name = "+result.getString(3));
      out.println("<br>");
    } */
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <TITLE>FabFlix</TITLE>
</HEAD>
<CENTER>
<BODY>
<H1 ALIGN="CENTER">Welcome to FabFlix!</H1>
<%
    String url = "/fabflix/customer/main";
    if(request.getSession().getAttribute("url")!= null)
      url = (String)request.getSession().getAttribute("url");
%>


<FORM ACTION=<%=url%>
      METHOD="POST">
  Username: <INPUT TYPE="TEXT" NAME="username" autofocus="autofocus"><BR>

  Password: <INPUT TYPE="PASSWORD" NAME="password"><BR>
  <CENTER>
    <INPUT TYPE="SUBMIT" VALUE="Submit Order">
  </CENTER>
</FORM>
</CENTER>
</BODY>
</HTML>

</body>
</html>
