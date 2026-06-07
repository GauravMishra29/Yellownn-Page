<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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


<form>

<table width="50" border="0" align="center">
  <tr>
    <td><img src="../images/hotjobs/003.gif" width="226" height="77" /></td>
    <td><img src="../images/hotjobs/052.gif" width="232" height="78" /></td>
  </tr>
</table>
<br />

<hr size="1" color="#CC0000">

<%if(request.getParameter("t1")!=null){%>
<% int i=2;
    Connection c;
    Statement s;
    ResultSet r;
    try
     {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      c=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
      String ques=request.getParameter("t1");
	  String ans=request.getParameter("t3");
	 session.setAttribute("xx",request.getParameter("t1"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from  cropregis");
     while(r.next())
       {
	  if(r.getString(6).equals(ques) && r.getString(9).equals(ans))
        {
          i=1;
		  session.setAttribute("xxx",request.getParameter("t1"));
          //response.sendRedirect("ycentry.jsp");
		  out.println("<font size=+3 color=#0000FF>Your password is :</font>");
		  out.println("<font size=+3 color=#0000FF>"+r.getString(7)+"</font>");
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
<p align="center"><a href="yclogin.jsp"><u>go back for relogin with password</u></a></p>
<table width="782" height="119" border="0" align="center">
  <tr>
    <td width="772" valign="top"> <P align="center"><table align="center" width="66%" bgcolor="#CCCCCC">
              <tr>
                <td colspan="2"></td>
              </tr>
              <tr>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td width="36%" align="center">&nbsp;</td>
                <td width="64%" align="left"><strong><font size="+2" color="#0000FF">Password Recovery
				</font></strong></td>
              </tr>
              <tr>
                <td height="31" align="left">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="49" align="center"><strong>User Name:</strong></td>
                <td><input type="text" name="t1" /></td>
              </tr>
              <tr>
                <td height="49" align="center"><strong>Security Question:</strong> </td>
                <td><select name="t2"><option value=" "> </option>
              <option value="pet">Your first pet</option>
              <option value="car">Your favourite car</option>
              <option value="actor">Your favourite actor</option>
              <option value="nick">Your Nickname</option></select></td>
              </tr>
              <tr>
                <td height="49" align="center"><strong>Answer:</strong></td>
                <td><input type="text" name="t3" /></td>
              </tr>
              <tr>
                <td height="49" align="left">&nbsp;</td>
                <td><p><input type="submit" value="Submit" /><input type="reset" value="Reset" /></p></td>
              </tr>
            </table>
</table>
</form>
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