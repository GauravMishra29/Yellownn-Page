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
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
	try
     {
     //Class.forName("oracle.jdbc.driver.OracleDriver");
     //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sbit","yellow","page");   
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     c=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");     
     s=c.createStatement();
     s1=request.getParameter("t1");
	 s2=request.getParameter("t2");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	 s5=request.getParameter("t5");
	 s6=request.getParameter("t6");
	 i=s.executeUpdate("insert into cropser values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Request Registered Successfully");
	  </script>
 
	<% } }%>
	

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
    <td width="772" valign="top"> <P align="center"><font size="6" color="#FF0088"><u>Service Registration Form</u></font>
	</p><p align="right"><a href="ccentry.jsp"><u>back on corporate customer entry page</u></a></p>
      <p><font color="#008000">City of nawabs </font><font color="#008000"> yellow page provide following services?<br />
        On different charges.These services are available for<br />
        Registered corporate user.These services provides regular alerts<br />
        For user time to time.Register your company on portal.And flash your Add<br />
        On front of million of City of nawabs Yellow page user on one click.if you required these <br />
        services Please fill form, which is attach In lower part of this page.<br />
        </font> <br />
        <font face="Arial" color="blue">City of nawabs Yellow Page Services:-</font> </p>
      <hr color="red" />
      <table height="99" border="2" align="center" bgcolor="#CCCCCC">
        <tr>
          <th width="115">Service Name</th>
          <th width="80">Service Id</th>
        </tr>
        <tr>
          <td>1 to 4kb </td>
          <td>01</td>
        </tr>
        <tr>
          <td>5 to 9 kb </td>
          <td>02</td>
        </tr>
        <tr>
          <td>10 to 15kb </td>
          <td>03</td>
        </tr>
      </table>
      <br />
      <font face="Arial" color="blue">Rate List of City of nawabs Yellow page services:-<br />
      </font>
      <hr color="red" />
      <br />
      <table width="363" border="2" align="center" bgcolor="#CCCCCC">
        <tr>
          <th width="49">Service Id</th>
          <th width="94">Duration</th>
          <th width="196">Charges</th>
        </tr>
        <tr>
          <td>01</td>
          <td>15 Days</td>
          <td>1000 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 month</td>
          <td>1500 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>6 month</td>
          <td>4000 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 year</td>
          <td>7000 Rs</td>
        </tr>
        <tr>
          <td>02</td>
          <td>15 Days</td>
          <td>800 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 month</td>
          <td>1200 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>6 month</td>
          <td>4000 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 year</td>
          <td>6000 Rs</td>
        </tr>
        <tr>
          <td>03</td>
          <td>15 Days</td>
          <td>300 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 month</td>
          <td>600 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>6 month</td>
          <td>2000 Rs</td>
        </tr>
        <tr>
          <td></td>
          <td>1 year</td>
          <td>3000 Rs</td>
        </tr>
      </table>
      <script src="vivek.js" type="text/javascript">
      </script>
      </p>
      <br />
      <font face="Arial" color="blue">User Registration For Services :-<br />
      </font>
      </p>
      <hr color="red" />
      <font face="Arial" color="blue">User Details :-<br />
      </font>
      </p>
      <form>
        <table align="center" cellpadding="10">
          <tr>
            <td>Organization  Name:</td>
            <td><input name="t1"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
          <tr>
            <td>User name:</td>
            <td><input name="t2"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
          <tr>
            <td>Duration:</td>
            <td><input name="t3"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
          <tr>
            <td>Service id:</td>
            <td><select name="t4">
                <option value="100">01</option>
                <option value="200">02</option>
                <option value="300">03</option>
              </select>
            </td>
          </tr>
        </table>
        <hr color="red" />
        <font face="Arial" color="blue">Payment Option :-<br />
        </font>
        <table align="center" cellpadding="10">
          <tr>
            <td>Credit Card No:</td>
            <td><input name="t5"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
          <tr>
            <td>Account No:</td>
            <td><input name="t6"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
        </table>
        <hr color="red" />
        <input type="submit" name="submit" value="Submit Details" />
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