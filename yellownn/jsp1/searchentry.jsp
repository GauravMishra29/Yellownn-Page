<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<script language="javascript" src="vivek.js">
</script
<%if(request.getParameter("place")!=null){
%>
<jsp:useBean id="t1" class="pack.entry"/>
<jsp:setProperty name="t1"  property="*"/>
<%
int k=t1.insert();
if(k==1)
{
out.println("Enrty is registered");
}
}%>
<p align="center"><font size="6" color="#FF0088"><u>Searching Contents Entry Form</u></font></p>
<br><br>
<font face="Arial" color="blue" size="5">Enter New Searching Details:-<br></font>
<hr color="red">
<br>
<form name="det"  method="get"  action="" onSubmit=" return validate();">
<table align="center" cellpadding=10>
<tr>
<td>By Place:</td>
<td><input name="place"  type="text" size="50" maxlength="50" onBlur="blank();" ></td>
</tr><br><tr>
<td>By Accomdation:</td>
<td><input name="accom"  type="text" size="50" maxlength="50" onBlur="blank();"></td></tr><br>
<tr><td>By Travel:</td>
<td><input name="travel"  type="text" size="50" maxlength="50" onBlur="blank();"></td>
</td>
</table>
<br>
<hr color="red">
<br>
<input type="submit" value="Submit Details">
</body>
</html>