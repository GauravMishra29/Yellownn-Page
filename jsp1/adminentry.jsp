
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>adminentry</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {font-size: 14px}
.style3 {font-size: 16px}
-->
</style></head>
<body onload="javascript:window.history.forward(-1)">
<% String str=(String)session.getAttribute("xxx");
if(str==null)
{
  response.sendRedirect("adminlogin.jsp");
}  
 %>
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
        <span class="style2"><span class="style3"><p align="left"><a href="logout.jsp"><u>Logout</u></a></p></span></span></p>
      <p align="left" class="style3">&nbsp;</p>
      <p align="right"><img src="../images/shell.gif" width="175" height="35" /></p>
      <b>
      <p><marquee>Welcome</marquee></p>
      <p>&nbsp;      </p>
      <h3 align="center"><p class="lite">This is Administrator Entry Page!- </p>
<h4 align="center" class="lite">Options For Administrator Of Job Site</h4>
<br><br><br>
<table align="center" class="xtra_menu_Links"><tr><td height="21">

<a href="ydisplay.jsp"><B> |Display Customer| </B></a><br /></td><td>
<a href="cdelete.jsp"><B> |Delete Customer| </B></a><br /></td><td>
<a href="ccdisplay.jsp"><B>|Display Corporate Customer|</B></a><br /></td><td>
<a href="ccdelete.jsp"><B>|Delete Corporate Customer|</B></a><br /></td>
<td><a href="feeddisplay.jsp">|<strong>Display Feedback|</a> </strong></td>
<td>
<a href="mailto: "><B>|Contact Customer|</B></a><br /></td>
</tr>
</table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><br />
      </p>
      <p align="center">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="500" height="150" align="absmiddle">
          <param name="movie" value="../images/bank.swf" />
          <param name="quality" value="high" />
          <embed src="../images/bank.swf" width="500" height="150" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>
        </object>
      </p></td>
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