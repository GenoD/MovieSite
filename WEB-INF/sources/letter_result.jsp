<%@page import="java.sql.*,
 javax.sql.*,
 java.io.IOException,
 javax.servlet.http.*,
 javax.servlet.*,
 java.util.*"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@page import="SQLClasses.*"%>

<HTML>
<HEAD>
	<link rel="stylesheet" type="text/css" href="../../mystyle.css">
	<TITLE>Result Page</TITLE>
</HEAD>
<BODY BGCOLOR="cccccc">
	<H1 align="center">Good Browse Results Buddy WOO!</H1><br>
	<H2 align="center">Browse Results:</H2><br>
	<Center>
	<FORM ACTION="/fabflix/customer/cart" METHOD="get">
    	<INPUT style="height: 2em; width: 25em" ID = "checkOut" TYPE="SUBMIT" VALUE="Checkout"></INPUT>
	</FORM>
	</Center>
	<table align="center"style"border: solid" border="1"/>
	<%
	//
	//
	//
	//
	
		System.out.println("Letter result");
		List<Movie> movies = (List<Movie>) request.getAttribute("movies");
		if(movies == null)
			System.out.println("This shit man");
		if(movies.size() == 0) {
	%>
		No movies found.
	<%	
		} else {
		for(Movie movie: movies) {
	%>
		<tr>
			<td><img src=<%=movie.banner_url%> alt="Picture failed to load." height="140" width="100"></td>
			<td style="border-right: solid;"><a href=/fabflix/customer/movie/<%=movie.id%>><%=movie.title%></a></td>
		</tr>
	<%
		}
	}
	%>
</BODY>
</HTML>