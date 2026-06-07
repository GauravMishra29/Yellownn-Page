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
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4,s5,s6,s7,s8,s9;
	try
     {
     //Class.forName("oracle.jdbc.driver.OracleDriver");
     //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sbit","yellow","page");   
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     c=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");     
     s=c.createStatement();
     s1=request.getParameter("t1");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	 s5=request.getParameter("t5");
     i=s.executeUpdate("update regis set t3='"+s3+"',t4='"+s4+"',t6='"+s5+"' where t7='"+s1+"' ");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Record modify successfully");
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
    <td width="772" valign="top"> <P align="center"><br />
      <font size="5" color="#008000">Record which you can change</font> </p>
   <p align="right"><a href="ycentry.jsp"><u>back on customer entry page</u></a></p>
   <p align="center">

</p>
   <hr color="red" />
      <font face="Arial" color="blue">User Old Details :-<br />
	  <%! int i; %>
<%
String v6=new String("");
v6=(String)session.getAttribute("xx");
          Connection con=null;
          ResultSet rs=null;
          Statement stmt=null;
             try
               { 
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               }catch(Exception e){} 
          con=DriverManager.getConnection("jdbc:odbc:sbit","yello","page");
          stmt=con.createStatement();
          rs=stmt.executeQuery("select *from regis where t7='"+v6+"'");
          out.println("<html><body>");
          out.println("<table border=2>");
          out.println("<tr>");
          out.println("<th>Customer name</th>");  
          out.println("<th>Address</th>");
          out.println("<th>E-mail</th>");
          out.println("<th>Phone</th>");
          out.println("</tr>"); 
          while(rs.next())
            {
              out.println("<tr>");
              out.println("<td>"+rs.getString(1)+"</td>");
              out.println("<td>"+rs.getString(3)+"</td>");
              out.println("<td>"+rs.getString(4)+"</td>");
              out.println("<td>"+rs.getString(6)+"</td>");
              out.println("</tr>");
            }
              out.println("</table>");
              out.println("</body>");
              out.println("</html>");
%>
      </font> <br />
      <br />
      <br />
      <font size="5" color="#008000">Modify User Registration</font>
      <hr color="red" />
      <font face="Arial" color="blue">User Modified Details :-<br />
      </font>
      </p>
      <form>
        <table align="center" cellpadding="10">
          <tr>
            <td>User Name:</td>
            <td><input name="t1"  type="text" size="50" maxlength="50" onblur="blank();" /></td>
          </tr>
          
          <tr>
            <td>Address:</td>
            <td><input name="t3" type="text" size="50" maxlength="50" width="200" height="50" /></td>
          </tr>
          <tr>
            <td>E-Mail:</td>
            <td><input type="text" name="t4"  size="20" /></td>
          </tr>
          <tr>
            <td>Phone No.</td>
            <td><input type="text" maxlength="10" name="t5" size="20"  onblur="numericblank();"></td>
          </tr>
        </table>
        <hr color="red" />
        <input name="submit" type="submit" value="Submit Details" />
      </form></td>
  </tr>
</table>
<P align=justify>&nbsp;</P>

<BR />
<br />
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