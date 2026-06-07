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
.style2 {color: #00CCFF}
.style3 {
	color: #CC0000;
	font-size: 10px;
}
.style4 {color: #000000}
-->
</style></head>
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
	 i=s.executeUpdate("insert into cmnt values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
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
	  <h1><center>
		  <p><span class="style2"><marquee behavior="alternate">
		  </marquee>
		  </span><span class="style2">
		  <marquee behavior="alternate" class="style1">
		  <u>CITY OF NAWABS</u>
		  </marquee>
		  </span><span class="style2">
		  <marquee behavior="alternate">
		  </marquee>
            </span> <span class="style1">
          </span></p>
		  </center></h1>
		
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
	<div id="right">
	
	
	<H2>Bada Imambara</H2>
<P align=justify>
<P>is an imambara complex in Lucknow, India, built by Asaf-ud-daulah, Nawab of 
Lucknow, in 1784. It is also called the Asafi Imambara. Bara means big, and an 
imambara is a shrine built by Shia Muslims for the purpose of Azadari. The Bara 
Imambara is among the grandest buildings of Lucknow.</P>
<P><STRONG>Architecture </STRONG>: The architecture of the complex reflects the 
maturation of ornamented Mughal design – it is one of the last major projects 
not incorporating any European elements or the use of iron. The main imambara 
consists of a large vaulted central chamber containing the tomb of 
Asaf-ud-Daula. At 50 by 16 meters and over 15 meters tall, it has no beams 
supporting the ceiling, and is one of the largest such arched constructions in 
the world. There are eight surrounding chambers built to different roof heights, 
permitting the space above these to be reconstructed as a three-dimensional 
labyrinth with passages interconnecting with each other through 489 identical 
doorways. This part of the building, known as is a popular attraction, and often 
the whole complex may be referred to as the bhulbhulayah. It is possibly the 
only existing maze in India and came about unintenionally to support the weight 
of the building, constructed on marshy land.</P>
<P>The design of the Imambara was obtained through a competitive process. The 
winner was an architect Kifayatullah, who also lies buried in the main hall of 
the Imambara. It is another unique aspect of the building where the sponsor and 
the architect lie buried besides each other.</P>
<DIV id=_mcePaste 
style="LEFT: -10000px; OVERFLOW: hidden; WIDTH: 1px; POSITION: absolute; TOP: 114px; HEIGHT: 1px">is 
an imambara complex in Lucknow, India, built by Asaf-ud-daulah, Nawab of 
Lucknow, in 1784. It is also called the Asafi Imambara. Bara means big, and an 
imambara is a shrine built by Shia Muslims for the purpose of Azadari. The Bara 
Imambara is among the grandest buildings of Lucknow.</DIV>
<P></P><!-- You can start editing here. --><!-- If comments are open, but there are no comments. -->
<DIV id=respond>
<H3>Leave a Reply</H3>
<DIV class=cancel-comment-reply><SMALL><A id=cancel-comment-reply-link 
style="DISPLAY: none" href="http://lucknowcity.com/bada-imambara.php#respond" 
rel=nofollow>Click here to cancel reply.</A></SMALL> </DIV>
<FORM  
method=post>
<P><INPUT id=author tabIndex=1 size=22 name="t1" aria-required="true"> <LABEL 
for=author><SMALL>Name (required)</SMALL></LABEL></P>
<P><INPUT id=email tabIndex=2 size=22 name="t2" aria-required="true"> <LABEL 
for=email><SMALL>Mail (will not be published) (required)</SMALL></LABEL></P>
<P><INPUT id=url tabIndex=3 size=22 name="t3"> <LABEL 
for=url><SMALL>Website</SMALL></LABEL></P><!--<p><small><strong>XHTML:</strong> You can use these tags: <code>&lt;a href=&quot;&quot; title=&quot;&quot;&gt; &lt;abbr title=&quot;&quot;&gt; &lt;acronym title=&quot;&quot;&gt; &lt;b&gt; &lt;blockquote cite=&quot;&quot;&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=&quot;&quot;&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=&quot;&quot;&gt; &lt;strike&gt; &lt;strong&gt; </code></small></p>-->
<P><TEXTAREA id=comment tabIndex=4 name="t4" rows=10 cols=45></TEXTAREA></P>
<P><INPUT id=submit tabIndex=5 type=submit value="Submit Comment" name=submit> 
<INPUT id=comment_post_ID type=hidden value=268 name=comment_post_ID> <INPUT 
id=comment_parent type=hidden value=0 name=comment_parent> 
</P></FORM></DIV>
	
	
	
       
	   
	 
	  
	  
	 
	  
	  
	  
	  
	  
	  
	  
	   
	   
</div>
	

	<br /><br />
      <p align="center"><img src=../images/anim/ibm.gif width="150" height="60"></p><br />
      <p align="center"><img src="../images/hotjobs/007.gif" width="120" height="115"></p>
      <p align="center">&nbsp;</p>
      <p align="center"><img src="../images/hotjobs/microsoft.gif" width="146" height="46">&nbsp;</p>      
      <p align="center">&nbsp;</p>
	
	
	
	
	
	<div id="left">
	<div id="left_top"></div>
	<div id="categories">
			<h3>Searching Categories</h3>
			<ul>
			      <li><a href="HW2RCH.jsp">How To Reach</a></li>
				  <li><a href="historical.jsp">Historical places</a></li>
				  <li><a href="tourntravel.jsp">Tour and Travel</a></li>
				  <li><a href="education.jsp">Educational environment</a></li>
				  <li><a href="shoping.jsp">Shopping</a></li>
				  <li><a href="medical.jsp">Medical services</a></li>
				  <li><a href="hotels.jsp">Hotels</a></li>
				  <li><a href="restaurant.jsp">Restaurants</a></li>
				  <li><a href="hongouts.jsp">Hangouts</a></li>
				  <li><a href="atm.jsp">ATM Locators</a></li>
				  <li><a href="malls.jsp">Malls</a></li>
				  <li><a href="contactus.jsp">Contact Us</a></li>
			</ul>
	</div>
	
	




<div style="clear:both"></div>
<!--content ends -->
<!--footer begins -->
	</div>
</div>
</div>
<div id="bot">
<div id="footer">
<p>Copyright  2010. <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p> 
	<p>Design by <a href="http://www.metamorphozis.com/" title="Free Web Templates">Free Web Templates</a>
		</p>
	</div>
</div>
<!-- footer ends-->
</body>
</html>