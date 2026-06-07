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
		  <marquee behavior="alternate">
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
    
	
	
	<DIV class=innertube>
<DIV>
<H2>How to Reach</H2>
<P align=justify>
<P><STRONG>By Flight<BR></STRONG>There are daily flights from Delhi, Bombay and 
Kolkata. Amausi Airport, Lucknow is directly connected with Delhi, Patna, 
Kolkata, Bombay and Varanasi by direct flights.</P>
<P><STRONG>By Train<BR></STRONG>Lucknow is on the New Delhi – Varanasi railway 
route. Connections can be made to Agra and Allahabad. A major railway junction, 
Lucknow is conveniently connected to many cities. Some of the important trains 
are : 5307/5308 Shatabadi Ex. : 5063/5064; Nainital Ex; : 9165/9166; Sabarmati 
Exp : 2553/2554; Vaishali Exp : 5609/5610; Awadh-Assam Exp : 8475/8476; 
Neelanchal Exp : 4283/4284; Ganga-Yamuna Exp : 4229/4230 Lucknow Mail : 
2419/2420; Gomti Exp : 4057/4058; Kashi-Vishwanath Exp : 4011/4012; Nauchandi 
Exp : 1015/1016; Bombay-Gorakhpur Exp : 5011/5012; Cochin-Gorakhpur Exp. The 
Important Contact for Lucknow Railways are as under:- Railways Manual Enquiry 
131, 135, 2636132 Pre Recorded 1331, 1332 Reservation 1330, 1350, 0522-2635841 
Badshahnagar 0522-2385182</P>
<P><STRONG>By Road</STRONG><BR>Lucknow is connected by road with all the major 
cities of the country. Some of the major road distances are : Agra – 363 km, 
Allahabad – 210 km, Ayodhya – 135 km, Kolkata – 985 km, Corbett National Park – 
400 km, Delhi – 497 km, Dudhwa National Park – 238 km, Kanpur – 79 km, Khajuraho 
– 320 km, Varanasi – 650 km.</P>
<P><STRONG>By Bus</STRONG><BR>The Bus Stations are situated at Charbagh, 
Alambagh, and Kaisar Bagh. The Telephone No for Roadways Inter State Bus 
Terminal Alambagh is : 0522-2458096 Buses from Sunauli-Bhairawa on the 
India/Nepal border stop on their way to Varanasi.</P>
<P><STRONG>Best time to visit Lucknow :</STRONG><BR>Lucknow is a wonderful place 
and can be visited just about anytime through the year. However, the best time 
to visit Lucknow is usually from October to March. This is usually the peak 
season for Lucknow travel. The weather in Lucknow varies from time to time and 
there are some extremities in the climatic conditions also. Although there is no 
answer as such for describing the ideal time to visit Lucknow, one usually 
visits Lucknow during the months of October to March.</P>
<P>The summers of Lucknow are pretty extreme and the temperatures can go upto 
45o Celsius during the months of May and June. During winters, the temperatures 
can go down to as low as 3° Celsius. However, winters are pleasant and the 
afternoons are usually warm. The temperature is usually pleasant during October 
to March and this is the time when tourists flock this place, as it is easier to 
roam around in a good weather.</P>
<P></P><!-- You can start editing here. -->
<H3 id=comments>One Response to "How to Reach"</H3>
<DIV class=navigation>
<DIV class=alignleft></DIV>
<DIV class=alignright></DIV></DIV>
<OL class=commentlist>
  <LI class="comment even thread-even depth-1" id=comment-561></LI>
</OL>
<DIV class=navigation>
<DIV class=alignleft></DIV>
<DIV class=alignright></DIV></DIV>
<DIV id=respond>
<H3>Leave a Reply</H3>
<DIV class=cancel-comment-reply><SMALL><A id=cancel-comment-reply-link 
style="DISPLAY: none" href="http://lucknowcity.com/how-to-reach.php#respond" 
rel=nofollow>Click here to cancel reply.</A></SMALL> </DIV>
<FORM onSubmit="return validate()" 
method=post>
<P><INPUT id=author tabIndex=1 size=22 name="t1" aria-required="true"> <LABEL 
for=author><SMALL>Name (required)</SMALL></LABEL></P>
<P><INPUT id=email tabIndex=2 size=22 name="t2" aria-required="true"> <LABEL 
for=email><SMALL>Mail (will not be published) (required)</SMALL></LABEL></P>
<P><INPUT id=url tabIndex=3 size=22 name="t3"> <LABEL 
for=url><SMALL>Website</SMALL></LABEL></P><!--<p><small><strong>XHTML:</strong> You can use these tags: <code>&lt;a href=&quot;&quot; title=&quot;&quot;&gt; &lt;abbr title=&quot;&quot;&gt; &lt;acronym title=&quot;&quot;&gt; &lt;b&gt; &lt;blockquote cite=&quot;&quot;&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=&quot;&quot;&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=&quot;&quot;&gt; &lt;strike&gt; &lt;strong&gt; </code></small></p>-->
<P align="center"><TEXTAREA id=comment tabIndex=4 name="t4" rows=10 cols=50></TEXTAREA></P>
<P><INPUT id=submit tabIndex=5 type=submit value="Submit Comment" name=submit>
</P>
</FORM></DIV></DIV></DIV>
	
	
	
	
</div>
	
	<marquee behavior="alternate"><p align="center" class="style3"><font size="4"><span class="style4">Payment for Member</span> </p>
	</marquee>
      <maruee><p align="center">We Accept </p></marquee><p align="center"><img src="../images/cards.gif"></p>
      <p align="center"><img src="../images/verisign.jpg"></p>
      <p align="center">&nbsp;</p>      <p align="center">&nbsp;</p>
	
	
	
	
	
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
	
	



</div>

</div>
</div>
<div id="bot">
<div id="footer">
<p>Copyright  2010. <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p> 
	
	</div>
</div>
<!-- footer ends-->
</body>
</html>