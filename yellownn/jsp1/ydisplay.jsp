<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>yregisteration</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style></head>
<body>

	

<div id="content">
<!-- header begins -->
<div id="header"> 
	<div id="logo">
		<h1>&nbsp;</h1>
		<h1><span class="style1"><center><marquee behavior="alternate"><u>CITY OF NAWABS </u></marquee> </center></span></h1>
		
	</div>
</div>
  <div id="menu">
		<ul>
			<li id="button1"><a href="index.jsp"  title="">Home</a></li>
			<li id="button2"><a href="imagegallery.jsp" title="">Image Gallery</a></li>
			<li id="button3"><a href="FEEDBACKNN.jsp" title="">Feed Back</a></li>
			<li id="button4"><a href="aboutus.jsp" title="">About Us</a></li>
			<li id="button5"><a href="map.jsp" title="">City Map</a></li>
		</ul>
        <p>&nbsp;</p>
  </div>
<!-- header ends -->
<!-- content begins -->

<br />
<table width="50" border="0" align="center">
  <tr>
    <td><img src="../images/hotjobs/003.gif" width="226" height="77" /></td>
    <td><img src="../images/hotjobs/052.gif" width="232" height="78" /></td>
  </tr>
</table>
<br />

<hr color="#CC0000" size="2" />
<br />



<table width="770" border="0" align="center">
  <tr valign="top">
    <td valign="top"><font size="6" color="#008000">Information About Customer</font>
 <p align="right"><a href="adminentry.jsp"><u>back on customer entry page</u></a></p><br>
<hr color="red">
<br><br>
<strong><font size="4" color="#008000">Registration Detail:-</font></strong>
<br>
<br>
<%
         Connection con=null;
          ResultSet rs=null;
          Statement stmt=null;
             try
               { 
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               }catch(Exception e){} 
          con=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
          stmt=con.createStatement();
          rs=stmt.executeQuery("select *from regis");
          out.println("<html><body>");
          out.println("<table bgcolor=lightyellow>");
          out.println("<tr  bgcolor=pink>");
          out.println("<th>Customer name</th>"); 
          out.println("<th>Date of Bith</th>"); 
          out.println("<th>Address</th>");
          out.println("<th>Email-Id</th>");
          out.println("<th>Gender</th>");
          out.println("<th>Phone Number</th>");
          
          out.println("</tr>"); 
          while(rs.next())
            {
              out.println("<tr>");
              out.println("<td>"+rs.getString(1)+"</td>");
              out.println("<td>"+rs.getString(2)+"</td>");
              out.println("<td>"+rs.getString(3)+"</td>");  
              out.println("<td>"+rs.getString(4)+"</td>");
              out.println("<td>"+rs.getString(5)+"</td>");
              out.println("<td>"+rs.getString(6)+"</td>");
              out.println("</tr>");
            }
              out.println("</table>");
              out.println("</body>");
              out.println("</html>");
%>
<br><br>
<hr color="red">
<br><br>
<strong><font size="4" color="#008000">Account Detail:-</font></strong>
<br>
<br>
<p align="center">
<%
         Connection con1=null;
          ResultSet rs1=null;
          Statement stmt1=null;
             try
               { 
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               }catch(Exception e){} 
          con1=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
          stmt1=con.createStatement();
          rs1=stmt1.executeQuery("select *from regis");
          out.println("<html><body>");
          out.println("<table bgcolor=lightyellow>");
          out.println("<tr bgcolor=pink>");
          out.println("<th>User Name</th>"); 
          out.println("<th>Password</th>"); 
		    out.println("<th>Security Question</th>"); 
			  out.println("<th>Answer</th>"); 
          out.println("</tr>"); 
          while(rs1.next())
            {
              out.println("<tr>");
              out.println("<td>"+rs1.getString(7)+"</td>");
              out.println("<td>"+rs1.getString(8)+"</td>");
			  out.println("<td>"+rs1.getString(9)+"</td>");
			  out.println("<td>"+rs1.getString(10)+"</td>");
              out.println("</tr>");
            }
              out.println("</table>");
              out.println("</body>");
              out.println("</html>");
%>
</p>
<br>
<hr color="red">
<br>
<p align="center"><font size="4" color="#CF2405">
<a href="mailto:">
<u>|Contact Customer|</u></a></font>
</p>
</table>
























<!--content ends -->
<!--footer begins -->
</div>
</div>
<div style="clear:both"></div>
<!--content ends -->
<!--footer begins -->
	</div>
<div id="bot">

<div id="footer">
<p>Copyright  2010. <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p> 
	
	</div>
</div>
<!-- footer ends-->
</body>
</html>