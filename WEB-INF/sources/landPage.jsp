<%@page import="java.sql.*,
 javax.sql.*,
 java.io.IOException,
 javax.servlet.http.*,
 javax.servlet.*,
 java.util.*,
 SQLClasses.*"
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
	<HEAD>
  		<link rel="stylesheet" type="text/css" href="../mystyle.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  		<TITLE>Home Page</TITLE>
	</HEAD>
	<td>
	<CENTER>
	<BODY>
    <div style="color:black; font-family: Verdana; font-size: 22px; padding:10px;">
		  <H1 align="center">Welcome USER!</H1>
  <div>
	<FORM ACTION="/fabflix/customer/search"
      METHOD="get">
    <INPUT TYPE="SUBMIT" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 14px; background-color: #808080" VALUE="Search"></INPUT>
  </FORM>

    <FORM ACTION="/fabflix/customer/browse" METHOD="get">
    <INPUT TYPE="SUBMIT" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 14px; background-color: #808080" VALUE="Browse"></INPUT>
</FORM>
<FORM ACTION="/fabflix/customer/checkout"
      METHOD="get">
    <INPUT ID = "checkOut" TYPE="SUBMIT" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 14px; background-color: #808080" VALUE="Checkout"></INPUT>
</FORM>
</div>
    <form name='myForm'>
        <input id="autocomplete" type='text' onkeyup="autocompleteSearch();" name='search' placeholder="Search.." style="width: 280px;">
    </form>
</CENTER>
</td>
</BODY>

<script language="javascript" type="text/javascript">
<!--
//Browser Support Code
function autocompleteSearch()
{
  var ajaxRequest;  // The variable that makes Ajax possible!
  try{
    // Opera 8.0+, Firefox, Safari
    ajaxRequest = new XMLHttpRequest();
  } catch (e){
    // Internet Explorer Browsers
    try{
      ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
      try{
        ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (e){
        // Something went wrong
        alert("Your browser broke!");
        return false;
      }
    }
  }
  // Create a function that will receive data sent from the server
  ajaxRequest.onreadystatechange = function()
  {
    if(ajaxRequest.readyState == 4)
    {
      var str = ajaxRequest.responseText;
      var result = str.split("$%");

      $( "#autocomplete" ).autocomplete({
      source: result
    });
    }
  }
  ajaxRequest.open("GET", "/fabflix/landpage/backgroundSearch/" + document.myForm.search.value, true);
  ajaxRequest.send(null);
}
</script>
</HTML>
