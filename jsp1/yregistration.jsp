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
</style>
<script language="javascript" type="text/javascript">

function valid()      
{var v=true;
	if(document.getElementById("t1").value=="")
	{
		alert("Enter your name");
		v=false;
	}
	
	else if(document.getElementById("t5").value=="")
	{
		alert(" Please Enter your address ");
		v=false;
	}
	else if(document.getElementById("t6").value=="")
	{
		alert("Enter your email");
	v=false;
	}
	else if(document.getElementById("t7").value=="")
	{
		alert(" PLEASE SELECT YOUR GENDER");
		v=false;
	}
	
	else if(document.getElementById("t8").value=="")
	{
		alert(" Please Enter your mobile no. ");
		v=false;
	}
	
	else if(document.getElementById("t9").value=="")
	{
		alert("Enter your username");
		v=false;
	}
	else if(document.getElementById("t10").value=="")
	{
		alert("Enter your password");
		v=false;
	}
	else if(document.getElementById("t11").value=="")
	{
		alert("select ur ques");
		v=false;
	}
	else if(document.getElementById("t12").value=="")
	{
		alert("Enter your answer");
		v=false;
	}
	
	
	else if(!echeck(document.getElementById("t6").value))
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
	 function blank1()
	 {
	 s2=document.det.t6.value;
	 if(s2=="")
	 {
	  alert("Entry can not be blank");
	  document.det.t6.focus();
	  return false;
	 }
	 return true;
	 }
	 
	 function blank2()
	 {
	 s4=document.det.t10.value;
	 if(s4=="")
	 {
	  alert("Entry can not be blank");
	  document.det.t10.focus();
	  return false;
	 }
	 
	return true;
}

function numericblank()
 {
	 s=document.det.t8.value;
	 if(s=="")
	 {
	  alert("Entry test can not be blank");
	  document.det.t8.focus();
	 }
  if(s!=null)
  {
	var i;
	b=true;
    s=document.det.t8.value;
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
	  document.det.t8.focus(); 
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
	 s2=request.getParameter("t2")+","+request.getParameter("t3")+","+request.getParameter("t4");
	 s3=request.getParameter("t5");
	 s4=request.getParameter("t6");
	 s5=request.getParameter("t7");
	 s6=request.getParameter("t8");
	 s7=request.getParameter("t9");
	 s8=request.getParameter("t10");
	  s9=request.getParameter("t11");
	   s10=request.getParameter("t12");
	 i=s.executeUpdate("insert into regis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {
        
		
		response.sendRedirect("yclogin.jsp");
		
		
	     
	    } }%>
	

		
	
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
    <td valign="top"><p><font color="#008000" size="5">New Customer Registration Page</font> </p>
        <hr color="red" />
        <font face="Arial" color="blue"><strong>Customer  Details :-</strong><br />
        </font>
        </p>
        <form  action=""  method="get" enctype="multipart/form-data" id="det" name="det" onsubmit=" return validate();">
          <table align="center" cellpadding="10">
            <tr>
              <td><strong>Name:</strong></td>
              <td><input name="t1"  type="text" size="50" maxlength="50" onblur="blank()" /></td>
            </tr>
            <tr>
              <td><strong>Date of Birth::</strong></td>
              <td>Date
                <select name="t2">
                    <%
for(int vl=1;vl<32;vl++){%>
                    <option value="<%=vl%>"><%=vl%></option>
                    <%}%>
                </select>
                Month
                <select name="t3">
                  <option value="Jan">Jan</option>
                  <option value="Feb">Feb</option>
                  <option value="March">March</option>
                  <option value="April">April</option>
                  <option value="May">May</option>
                  <option value="june">june</option>
                  <option value="July">July</option>
                  <option value="Aug">Aug</option>
                  <option value="Sep">Sep</option>
                  <option value="Oct">Oct</option>
                  <option value="Nov">Nov</option>
                  <option value="Dec">Dec</option>
                </select>
                Year
                <select name="t4">
                  <%
for(int vl=1950;vl<2100;vl++){%>
                  <option value="<%=vl%>"><%=vl%></option>
                  <%}%>
                </select></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><strong>Address:</strong></td>
              <td><textarea  name="t5" rows="4" cols="40"></textarea></td>
            </tr>
            <tr>
              <td><strong>E-Mail:</strong></td>
              <td><input type="text" name="t6"  size="20" onblur="blank1()"/></td>
            </tr>
            <tr>
              <td><strong>Gender:</strong></td>
              <td>Male<input type="radio" name="t7" value="male" />FeMale<input type="radio" name="t7" value="female" /></td>
            </tr>
            <tr>
              <td><strong>Phone No.</strong></td>
              <td><input type="text" maxlength="15" name="t8" size="20"  onblur="numericblank()" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <hr color="red" />
          <p><font face="Arial" color="blue"><strong>Account and Reference Details :-</strong></font></p>
          <table width="59%" align="center" cellpadding="10">
            <tr>
              <td><strong>User Name:</strong> </td>
              <td><input type="text"  name="t9" size="20"  />
              </td>
            </tr>
            <tr>
              <td><strong>Password:</strong></td>
              <td><input type="password" name="t10" size="20"  onblur="blank2()"/>
              </td>
            </tr>
            <tr>
              <td><strong>Hint Question:</strong></td>
              <td><select name="t11">
                  <option value=" "> </option>
                  <option value="pet">Your first pet</option>
                  <option value="car">Your favourite car</option>
                  <option value="actor">Your favourite actor</option>
                  <option value="nick">Your Nickname</option>
              </select></td>
            </tr>
            <tr>
              <td><strong>Your Answer:</strong></td>
              <td><input name="t12" type="text" size="20" maxlength="20"  /></td>
            </tr>
          </table>
          <hr color="red" />
          <input name="submit" type="submit" value="Submit Details" onclick="return valid();"/>
        </form>
      <p class="small">&nbsp;</p>
      <p align="center">&nbsp;</p>
      </p>
        <p align="center">&nbsp;</p></td>
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