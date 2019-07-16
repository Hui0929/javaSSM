<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminindex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <frameset rows="18%,*" border="1" framespacing="1" >
   	 <frame src="./frame/top.jsp">
   <frameset cols="10%,65%">
    <frame src="./frame/left.jsp" name="left">
    <frame src="" name="right">
   
   </frameset>
  <body>
   <font size=8px color=yellow ><b><i><center>校园新闻管理界面</center></i></b></font>
   

  </body>
</html>
