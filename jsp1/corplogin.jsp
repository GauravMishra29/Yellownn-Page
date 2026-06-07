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
.style2 {
	color: #330099;
	font-weight: bold;
}
.style3 {color: #000099}
-->
</style></head>
<body>
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
	 session.setAttribute("yy",request.getParameter("t1"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from  cropregis");
     while(r.next())
       {
	  if(r.getString(6).equals(uname) && r.getString(7).equals(password))
        {
          i=1;
		  session.setAttribute("xxx",request.getParameter("t1"));
          response.sendRedirect("ccentry.jsp");
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

<hr size="1" color="#CC0000">


<table width="782" height="119" border="0" align="center">
  <tr>
    <td width="772" valign="top"> <table width="100%" height="343">
      <tr>
        <td rowspan="2"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase=							"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="145" height="421">
            <param name="movie" value="../images/ad_all.swf" />
            <param name="quality" value="high" />
            <embed src="../images/ad_all.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="145" height="421"></embed>
        </object></td>
        <td width="54%" height="148"><p align="center"><u><font size="6" color="#00FF00">Login! Corporate User</font></u></p>
            <p> <font color="#FF3333">Looking for Increase your Business?</p>
          <p> awadh Yellow Page, Hottest portal for Exploring</p>
          <p> Lucknow. Register your company on portal.And flash</p>
          <p> your Add on front of million of Gomti Yellow page
            user on one click.</p>
          </font>
            <marquee behaviour="alternate">
              Best site to provide enterprise employee <a href="faq.jsp#a2">solutions</a> at <big>NO</big> cost
              </marquee>
            <p align="center"><b><font size="5" color="#008000"><br />
              New Corporate user?</font></b></p>
          <p align="center"><a href="corpregis.jsp"><img border="0" src="../images/star.gif" width="64" height="59" /></a></p></td>
        <td></td></td>
        <td width="32%" height="148"><p>Existing providers :- </p>
            <form>
              <table>
                <tr>
                  <td colspan="2"><p align="center">LOGIN HERE</p></td>
                </tr>
                <tr>
                  <td> Name:</td>
                  <td><input type="text" name="t1" /></td>
                </tr>
                <tr>
                  <td> Password:</td>
                  <td><input type="password" name="t2" /></td>
                </tr>
                <tr>
                  <td><input name="submit" type="submit" /></td>
				  <td><a href="ccforget.jsp"><u>forget password</u></a></td>
                </tr>
              </table>
            </form></td>
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