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
</style>
<script language="javascript" type="text/javascript">

function valid()      
{var v=true;
	if(document.getElementById("t1").value=="")
	{
		alert("Enter your company name");
		v=false;
	}
	
	else if(document.getElementById("t2").value=="")
	{
		alert(" Please Enter your address ");
		v=false;
	}
	else if(document.getElementById("t3").value=="")
	{
		alert("Enter your email");
	v=false;
	}
	else if(document.getElementById("t4").value=="")
	{
		alert(" enter company URL");
		v=false;
	}
	
	else if(document.getElementById("t5").value=="")
	{
		alert(" Please Enter your mobile no. ");
		v=false;
	}
	
	else if(document.getElementById("t6").value=="")
	{
		alert("Enter your username");
		v=false;
	}
	else if(document.getElementById("t7").value=="")
	{
		alert("Enter your password");
		v=false;
	}
	else if(document.getElementById("t8").value=="")
	{
		alert("select ur ques");
		v=false;
	}
	else if(document.getElementById("t9").value=="")
	{
		alert("Enter your answer");
		v=false;
	}
	
	
	else if(!echeck(document.getElementById("t3").value))
	{
	    alert("Invalid email...");
		 v=false;
	}
		
return v;
}
function echeck(str) {
 // alert("EMAIL ID="+str);
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		//   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		  // alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		  //  alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		  //  alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		   // alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		  //  alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		  //  alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}  


</script>


<script language="javascript">
function blank()
{
   s1=document.det.t1.value;
	 if(s1=="")
	 {
	  alert("Entry can not be blank");
	  document.det.t1.focus();
	  return false;
	 }
	 return true;
	 }
	
	 function blank2()
	 {
	 s4=document.det.t3.value;
	 if(s4=="")
	 {
	  alert("Entry can not be blank");
	  document.det.t3.focus();
	  return false;
	 }
	 return true;
	 }
	

	 
function numericblank()
 {
	 s=document.det.t5.value;
	 if(s=="")
	 {
	  alert("Entry test can not be blank");
	  document.det.t5.focus();
	 }
  if(s!=null)
  {
	var i;
	b=true;
    s=document.det.t5.value;
	if(s.length>10)
	{
	alert("enter numbers of size10");
   document.det.t8.focus();  
	}
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9")))
		b=false;
    }
	if(b==false)
	 {
	  alert("enter numbers between 0 to 9");
	  document.det.t5.focus(); 
	 }
    // All characters are numbers.
    return true; 
  }
 
 }
</script>
</head>
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
	 s7=request.getParameter("t7");
	 s8=request.getParameter("t8");
	  s9=request.getParameter("t9");
	   
	 i=s.executeUpdate("insert into cropregis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {
	   response.sendRedirect("ccentry.jsp");
	   }
	   {%>
	  
 
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

<font size="5" color="#008000">New Corporate User Registration Page</font>
<br /><br />
<form action=""  method="get" enctype="multipart/form-data" id="det" name="det" >

<table width="782" height="119" border="0" align="center">
  <tr>
    <td width="772" valign="top">
      <table width="454" align="center" cellpadding="10">
        <tr>
          <td width="105"><strong>Company Name:</strong></td>
          <td width="301"><input name="t1"  type="text" size="20" maxlength="50" onblur="blank();" /></td>
        </tr>
        
        <tr>
          <td><strong>Address:</strong></td>
          <td><textarea  name="t2" rows="4" cols="30"   ></textarea></td>
        </tr>
        <tr>
          <td><strong>E-Mail:</strong></td>
          <td><input type="text" name="t3"  size="20" onblur="blank2();"/></td>
        </tr>
        <tr>
          <td><strong>Company URL: </strong></td>
          <td><input type="text" name="t4"  size="20" />use as www.xxx.com</td>
        </tr>
        <tr>
          <td><strong>Phone No.</strong></td>
          <td><input type="text" maxlength="15" name="t5" size="20"  onblur="numericblank()" /></td>
        </tr>
      </table> 
	  <table width="59%" align="center" cellpadding="10">
        <tr>
          <td width="28%"><strong>User Name:</strong> </td>
          <td width="72%"><input type="text"  name="t6" size="20" /> 
          </td>
        </tr>
        <tr>
          <td><strong>Password:</strong></td>
          <td><input type="password" name="t7" size="20"  />
          </td>
        </tr>
        <tr>
          <td><strong>Hint Question:</strong></td>
          <td><select name="t8">
              <option value=" "> </option>
              <option value="pet">Your first pet</option>
              <option value="car">Your favourite car</option>
              <option value="actor">Your favourite actor</option>
              <option value="nick">Your Nickname</option>
          </select></td>
        </tr>
        <tr>
          <td><strong>Your Answer:</strong></td>
          <td><input name="t9" type="text" size="20" maxlength="20" /></td>
        </tr>
      </table>
	  <p>&nbsp;</p>
	  <p><input type="submit" onclick="return valid();"/></p>
    </tr>
</table>
<table width="782" height="50" border="0" align="center">
  <tr>
      <hr color="red">
      <font face="Arial" color="blue">User Details :-<br>
      </font>
    <p class="small">Need <a href="faq.jsp#a3">Help</a> for registering?</p>
    </tr>
</table>
</form>
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