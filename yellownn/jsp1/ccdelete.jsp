<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
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


<table width="50" border="0" align="center">
  <tr>
    <td><img src="../images/hotjobs/003.gif" width="226" height="77" /></td>
    <td><img src="../images/hotjobs/052.gif" width="232" height="78" /></td>
  </tr>
</table>
<br />

<hr size="1" color="#CC0000">


<table width="782" height="119" border="0" align="center">
  <tr>
    <td width="772" valign="top"> <font size="6" color="#008000">Corporate Customer Deletion Form</font>
 <p align="right"><a href="adminentry.jsp"><u>back on customer entry page</u></a></p><br>
<hr color="red">





<%if(request.getParameter("text1")!=null){%>
<%
          Connection con=null;
          Statement stmt=null;
             try
               { 
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               }catch(Exception e){}  
          con=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
          stmt=con.createStatement();
          String str=request.getParameter("text1");        
          int i=stmt.executeUpdate("delete from CROPREGIS where t6='"+str+"'");
		  if(i>0)
		  out.println("<font size=+2 color=#990000>corporate Customer deleted successfully</font>");
}%>

<br><br><br><br><br><br>

<font size="5" color="#000066">Registration Detail</font>
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
          rs=stmt.executeQuery("select *from cropregis");
          out.println("<html><body>");
          out.println("<table border=1 bgcolor=lightyellow >");
          out.println("<tr bgcolor=pink>");
          out.println("<th>Company name</th>"); 
          out.println("<th>Address</th>"); 
          out.println("<th>E-Mail</th>");
          out.println("<th>Company URL</th>");
          out.println("<th>Phone</th>");
		  out.println("<th>User Name</th>");
		  out.println("<th>Password</th>");
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
			    out.println("<td>"+rs.getString(7)+"</td>");
              out.println("</tr>");
            }
              out.println("</table>");
              out.println("</body>");
              out.println("</html>");
%>
<br><br><br>
<hr color="red">
<br>
<font size="5" color="#000066">Service Detail</font>
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
          rs1=stmt1.executeQuery("select *from cropser");
          out.println("<html><body>");
          out.println("<table border=1 bgcolor=lightyellow>");
          out.println("<tr bgcolor=pink>");
          out.println("<th>Company name</th>"); 
          out.println("<th>User Name</th>"); 
          out.println("<th>Duration</th>");
          out.println("<th>Service ID</th>");
          out.println("<th>Cradit Card No</th>");
          out.println("<th>Cheque No</th>");
          out.println("<th></th>");
          out.println("</tr>"); 
          while(rs1.next())
            {
              out.println("<tr>");
              out.println("<td>"+rs1.getString(1)+"</td>");
              out.println("<td>"+rs1.getString(2)+"</td>");
              out.println("<td>"+rs1.getString(3)+"</td>");  
              out.println("<td>"+rs1.getString(4)+"</td>");
              out.println("<td>"+rs1.getString(5)+"</td>");
              out.println("<td>"+rs1.getString(6)+"</td>");
              out.println("</tr>");
            }
              out.println("</table>");
              out.println("</body>");
              out.println("</html>");
%>
<br><br><br>
<hr color="#FF0000" />
<form>
<p align="center"> 
<font size="5" color="#008000">Enter User Name   </font>
<input type="text" name="text1" size="50" width="15">
<br><br><br><br>
<input align="middle" type="submit" value="Click For Delete"  border="4">
</form>
</p></td>
  </tr>
</table>
<P align=justify>&nbsp;</P>

<BR />
<br />
<table width="50" border="0" align="center">
  <tr>
    <td><img src="../images/hotjobs/wiprobpo135x35.gif" width="221" height="56" /></td>
    <td><img src="../images/anim/relianceinfo.gif" width="224" height="56" /></td>
  </tr>
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