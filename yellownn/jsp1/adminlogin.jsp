<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>adminlogin</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {font-size: 14px}
.style3 {font-size: 14px; font-weight: bold; }
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
	  //session.setAttribute("name",request.getParameter("t1"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from  alogin");
     while(r.next())
       {
	  if(r.getString(1).equals(uname) && r.getString(2).equals(password))
        {
          i=1;
		  session.setAttribute("xxx",request.getParameter("t1"));
          response.sendRedirect("adminentry.jsp");
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
    <td width="772" valign="top"> <P align="center"><strong><font color="blue" size="5">Administrater Login Page</font></strong></p>
      <br />
      <br />
      </p>
      <table width="100%" height="343">
        <tr>
          <td width="11%" rowspan="2"></td>
          <td width="57%" height="148"><p align="left" class="style2"> <font color="blue">Content Designers, reviewers and administrable users, please login. </font></p></td>
          <td width="32%" height="148"><p class="style3">Administrators login :-</p>
            <p>&nbsp; </p>
            <form method="post" id="fr_lg_adm">
                <table>
                  <tr> <strong>LOGIN HERE</strong></tr>
                  <tr>
                    <td> <strong>Name:</strong></td>
                    <td><input type="text" name="t1" /></td>
                  </tr>
                  <tr>
                    <td> <strong>Password</strong>:</td>
                    <td><input type="password" name="t2" /></td>
                  </tr>
                  <tr>
                    <td><input name="submit" type="submit" class="btn" /> 
					<td></a></td>                   </td>
                  </tr>
                </table>
            </form></td>
        </tr>
        
      </table></td>
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