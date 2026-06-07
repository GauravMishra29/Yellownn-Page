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
		alert("Enter your name");
		v=false;
	}
	
	else if(document.getElementById("t2").value=="")
	{
		alert("  Enter your email ");
		v=false;
	}
	
	else if(document.getElementById("t3").value=="")
	{
		alert(" Please Enter your mobile no. ");
		v=false;
	}
	
	else if(document.getElementById("t4").value=="")
	{
		alert("Enter your username");
		v=false;
	}
	else if(document.getElementById("t5").value=="")
	{
		alert("Enter your comment");
		v=false;
	}
	
	else if(!echeck(document.getElementById("t2").value))
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


</head>
<body>
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4,s5;
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
	 i=s.executeUpdate("insert into feedback values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("comment submitted Successfully");
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
	</div>
<!-- header ends -->
<!-- content begins -->
<div id="main">



<TABLE class=tableborder4 cellSpacing=2 cellPadding=0 width=776 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD colSpan=2><FONT color=#ff6521>
      <H1 align=center></H1></FONT>
      <P></P>
      <TABLE cellSpacing=1 cellPadding=1 width=776 border=0>
        <TBODY>
        <TR>
          <TD bgColor=#ffffff colSpan=3 height=24 ALT=""> <strong>User FeedBack Form </strong>
            <TABLE class=tableborder4 height=28 cellSpacing=2 cellPadding=0 
            width="100%" border=0><TBODY><TR><TD height=19>&nbsp;</TD></TR></TBODY></TABLE></TD>
          <TD width=169 bgColor=#ffffff height=24 ALT="">
            <TABLE class=tableborder4 cellSpacing=2 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
               
  

                <FORM name=frmsearch onSubmit="return validateform(this)" 
                action=search_test.php method=post>
                <TD class=oorange vAlign=top width="41%">&nbsp; </TD>
                <TD class=oorange width="59%">&nbsp;</TD>
                </FORM></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#ffffff colSpan=3 height=24 ALT=""><table cellspacing=0 cellpadding=0 border=1>
            <tbody>
              <tr>
                <td><img height=67 
                  alt="Fresh Logics is the perfect technology partner you have been searching for! We offer outstanding service and support - from low cost website development to affordable, n-tire multiserver Application development. " 
                  src="../images/other/naukri.gif" 
                  width=257></td>
                <td><img height=67 
                  alt="Fresh Logics - Client Server Application - Distributed Application - Component Development - XML Application - Wireless Application " 
                  src="../images/anim/naukri.gif" 
                  width=350></td>
              </tr>
              <tr>
                <td><img height=85 
                  alt="Web development, website development company, website promotion, design, hosting, SEO, Multi Media Graphics, Software Development, E-Commerce, Real estate website, Open Source Scripts, Reciprocal Links, Project Quote, Career development, Client Server Application development" 
                  src="../images/anim/firsttek.gif" 
                  width=257></td>
                <td><img height=85 
                  alt="Ecommerce Website Design firms, Custom Web Site Design, Web Designing India" 
                  src="../images/anim/mancer.gif" 
                  width=350></td>
              </tr>
            </tbody>
          </table></TD>
          <TD width=169 bgColor=#ffffff height=24 ALT="">
            <TABLE class=tableborder4 height=105 cellSpacing=2 cellPadding=0 
            width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=TDhead background=file1_files/bg.gif 
                height=21>News</TD></TR>
              <TR>
                <TD height=125>
                  <DIV align=justify>
                  <MARQUEE onmouseover=this.stop() onmouseout=this.start() 
                  scrollAmount=1 scrollDelay=60 direction=up width="100%" 
                  height=120><BR><A 
                  href="http://www.freshlogics.com/news.php?news_id=9"><B>FreshLogics 
                  launches new website.</B></A><BR>A whole new look isn't all 
                  that's different with this new site - FreshLogics incorporates 
                  new features such as various webdevelopment plan offerings, a 
                  project quote area, and a section with News. Along with these, 
                  tighter security measures have been incorporated into the 
                  order process as well as a more user-friendly style to the 
                  process itself. Customers can easily find answers to their 
                  questions via the FAQs page and the Knowledgebase and will see 
                  a major improvement in ease of site usability overall. Stay 
                  tuned to the News section for upcoming news and articles on 
                  Freshlogics.<BR><BR><A 
                  href="http://www.freshlogics.com/news.php?news_id=7"><B>Freshlogics 
                  extended its work forced.</B></A><BR>freshlogics extended its 
                  work forced by 30% after getting a continuous outsourcing 
                  /offshore projects from USA and Europe. New USA calling 
                  number. FreshLogics installed its new USA Calling number, now 
                  US client can call us on new number for all there queries and 
                  support. We also provide support from online chat and 
                  messenger. Please see our support pages for further 
                  details.<BR><BR><A 
                  href="http://www.freshlogics.com/news.php?news_id=3"><B>New 
                  version of EcomLogics It's our proud pleasure to announce the 
                  release of new version of EcomLogic.</B></A><BR>This release 
                  contains a number of new features , updates according new 
                  search engine trends. Details on all the changes in this 
                  release can be found in the ecommerce pages of our web 
                  site.<BR><BR><A 
                  href="http://www.freshlogics.com/news.php?news_id=8"><B>Web 
                  development package Prices Slashed.</B></A><BR>FreshLogics 
                  slashed its prices for all web development packages from 5 to 
                  10%.<BR></MARQUEE></DIV></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD width=2><IMG height=1 alt="" src="file1_files/spacer.gif" 
            width=2></TD>
          <TD width=605><IMG height=1 alt="" src="file1_files/spacer.gif" 
            width=255></TD>
          <TD><IMG height=1 alt="" src="file1_files/spacer.gif" width=350></TD>
          <TD><IMG height=1 alt="" src="file1_files/spacer.gif" 
        width=169></TD></TR></TBODY></TABLE>
      <P align=center>
     </P>
      <H1></H1></TD>
  <TR>
    <TD vAlign=top>&nbsp;      </TD>
    <TD vAlign=top>
      <TABLE class=tableborder4 cellSpacing=2 cellPadding=0 border=0 
WIDTD="615">
        <TBODY>
        <TR>
          <TD>
            <TABLE class=contentpane cellSpacing=0 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
                <TD class=Tdhead width="23%" 
                background=file1_files/freshlogics_bg.jpg height=24>Contact 
                  Details </TD>
                <TD class=buttonheading align=right width="77%" 
                background=file1_files/freshlogics_bg.jpg height=24><A 
                  title=Print 
                  href="javascript:void%20window.open('http://freshlogics.com/index2.php?option=com_contact&amp;Itemid=3&amp;contact_id=1&amp;pop=1', 'win2', 'status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no');"></A></TD></TR>
              <TR>
                <TD colSpan=2>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=1orange style="BACKGROUND-REPEAT: no-repeat" 
                      width=249 background=file1_files/test_01.jpg colSpan=2 
                      height=56 
                        ALT="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;21,Gangwal 
                        Park,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jaipur 
                        - 302004 Rajasthan, 
                        <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INDIA</TD>
                      <TD width=126 height=220 rowSpan=4 ALT=""></TD>
                      <TD rowSpan=4><IMG height=220 alt="" 
                        src="../images/test_03.jpg" width=199></TD>
                      <TD width=37 height=220 rowSpan=4 ALT=""></TD></TR>
                    <TR>
                      <TD width=249 colSpan=2 height=55 ALT="">
                        <TABLE cellSpacing=0 cellPadding=0 width=249 border=0>
                          <TBODY>
                          <TR>
                            <TD><IMG height=55 alt="" 
                              src="../images/test2_01.jpg" width=51></TD>
                            <TD class=1orange width=198 
                            background=file1_files/test2_02.jpg height=55 
                              ALT="">&nbsp;&nbsp;
 Email: <a href="mailto:me@naveensharma.com">info@freshlogics.com </a></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG height=48 alt="" src="../images/test_06.jpg" 
                        width=45></TD>
                      <TD width=204 height=48 ALT="">INDIA<SPAN class=1orange> 
                        +919928666779,+91.1412601319 , +91 9929990001 
                        </SPAN><BR>USA<SPAN class=1orange> 
                        +1-303-731-3099</SPAN> <BR>UK <SPAN 
                        class=1orange>+44-131-208-3199 </SPAN></TD></TR>
                    <TR>
                      <TD width=249 colSpan=2 height=61 
                  ALT=""></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD colSpan=2>
                  <TABLE height="100%" cellSpacing=0 cellPadding=5 width="100%" 
                  align=center border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top height="100%">
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                        align=center border=0>
                          <TBODY>
                          <TR>
                            <TD align=left>
                              <FORM name=feedback onSubmit="return validate()" 
                               method=post>
                                <TABLE cellSpacing=1 cellPadding=1 width="47%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD class=tdbr colSpan=3></TD></TR>
                                <TR class=TDdark>
                                <TD class=TDFont noWrap width="24%">Name </TD>
                                <TD class=TDFont width="4%">&nbsp;</TD>
                                <TD align=left width="72%"><INPUT class=box 
                                size=36 name="t1" validate_name="Name" 
                                notnull="true" acceptdata="char_num_etc" 
                                vaildateme="true"></TD></TR>
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                                <TR class=TDlight>
                                <TD class=TDFont noWrap>E-mail</TD>
                                <TD class=TDFont>&nbsp;</TD>
                                <TD align=left><INPUT class=box size=36 
                                name="t2" validate_name="E-mail" notnull="true" 
                                vaildateme="true"></TD></TR>
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                                <TR class=TDdark>
                                <TD class=TDFont noWrap>Telephone No.</TD>
                                <TD class=TDFont>&nbsp;</TD>
                                <TD align=left><INPUT class=box size=36 
                                name="t3"></TD></TR>
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                                <TR class=TDlight>
                                <TD class=TDFont noWrap>User Name</TD>
                                <TD class=TDFont>&nbsp;</TD>
                                <TD align=left><INPUT class=box size=36 
                                name="t4"></TD></TR>
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                                
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                               
                                <TR>
                                <TD class=tdbr noWrap colSpan=3></TD></TR>
                                <TR class=TDdark>
                                <TD class=TDFont vAlign=top noWrap>Comment</TD>
                                <TD class=TDFont vAlign=top>&nbsp;</TD>
                                <TD vAlign=top align=left><TEXTAREA class=box1 name="t5" rows=4 cols=30 validate_name="Comment" notnull="true" vaildateme="true"></TEXTAREA></TD></TR>
                                <TR>
                                <TD class=tdbr colSpan=3></TD></TR>
                                <TR class=TDlight>
                                <TD align=right>&nbsp;&nbsp;</TD>
                                <TD align=right>&nbsp;</TD>
                                <TD><INPUT class=mybuttonBrown type=submit value=Submit name=Submit onclick="return valid();">&nbsp;&nbsp; 
<INPUT class=mybuttonBrown type=submit value=Reset name=Reset></TD></TR></TBODY></TABLE></FORM></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top align=middle colSpan=2>
      <TABLE class=tableborder4 cellSpacing=2 cellPadding=0 align=center 
      border=0 WIDTD="776">
        <TBODY>
        <TR>
          <TD>          
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TABLE>
	
        <h4>&nbsp;</h4>
	




<!--content ends -->
<!--footer begins -->
	</div>
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