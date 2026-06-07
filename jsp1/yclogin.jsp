<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>cmlogin</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {
	color: #330099;
	font-weight: bold;
}
.style3 {color: #000099}
-->
</style></head>
<body>
<form>
<%if(request.getParameter("t1")!=null){%>
<% int i=2;
    Connection c;
    Statement s;
    ResultSet r;
    try
     {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      c=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
      String uname=request.getParameter("t1");
	  String password=request.getParameter("t2");
	 session.setAttribute("xx",request.getParameter("t1"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from  regis");
     while(r.next())
       {
	  if(r.getString(7).equals(uname) && r.getString(8).equals(password))
        {
          i=1;
		  session.setAttribute("xxx",request.getParameter("t1"));
          response.sendRedirect("ycentry.jsp");
		  break;
        }
		  i=0;
	   }
     }catch(Exception e)
      {
      System.out.println(e);
      }
    if(i==0)
	  {%>
	  <script language="javascript">
	  alert("wrong username and password");
	  </script>
	<% }} %>


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

<table width="100%" height="343">
  <tr>
    <td rowspan="2"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="145" height="421">
      <param name="movie" value="../images/ad_all.swf">
      <param name="quality" value="high">
      <embed src="../images/ad_all.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="145" height="421"></embed>
    </object></td>
    <td width="54%" align="right" valign="top" height="148">
      <p align="center"><font size="5" color="#FF0066"><u>Welcome Registered User</u></font></p>
      <p><font color="#008000">Are you searching for your dream job?<br>
                               Are you Dissatisfied with the current one?<br>
                               Whatever the question, you have just arrived at the correct place<br>
							   Login and choose your correct job in desired city. Job which suit<br>
							   to your personality and according to your qualification. 
							   </font>
	  <p align="center"><b><font size="5" color="#FF0000"><br><br>For new user?</font></b></p>
      <p align="center"><a href="yregistration.jsp"><img border="0" src="../images/star.gif" width="64" height="59"></a></td>
	
</td>
    
     <td>
 
 <table align="right">
 <tr>
 <td width="1%" align="right" height="148">
    <p>Existing users :- </p>   </td>
 </tr>
 <tr>
    <MARQUEE behavior=alternate><STRONG><font size="3" color="#FF0000">LOGIN
            HERE</font></STRONG></MARQUEE></tr>
    <tr><td>
    Name:</td><td><input type="text" name="t1"  ></tr><tr><td>
    Password:</td><td><input type="password" name="t2" ></tr>
    <tr><td><input type="submit" />  </td>
	<td><a href="cforget.jsp"><u>forget password</u></a></td>
    </tr>
	</table>	</td></tr></table>
	
	 <center>
	 <table>
	 <tr></tr>
	</table>
	<table width="100%">
	<tr><td>
	
	</td>
	</tr>
	</table>
</form>










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