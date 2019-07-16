<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'indexlefttop.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#F4F4F4"> 
   		<font size=6px color=brown><center>
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=1" target="right"> 校园</a>&nbsp;&nbsp;
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=2" target="right"> 国内</a>&nbsp;&nbsp;
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=3" target="right"> 国际</a>&nbsp;&nbsp; 
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=4" target="right"> 体育</a>&nbsp;&nbsp;
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=5" target="right"> 科技</a>&nbsp;&nbsp;
   		<a href="${pageContext.request.contextPath}/test/selnews.do?choose=6" target="right"> 社会</a>
   		</center></font>
  </body>
</html>
