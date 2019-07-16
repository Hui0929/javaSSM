<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#FFDAB9">
  <a href="${pageContext.request.contextPath}/test/qqqstudent.do" target="right"> 学生管理</a><br/>
  <a href="./frame/admincz.jsp" target="right"> admin管理</a><br/>
  <a href="${pageContext.request.contextPath}/test/qqq.do" target="right">  新闻审核</a><br/>
  	<a href="${pageContext.request.contextPath}/test/getallnews.do" target="right">新闻管理</a><br/>

   	<a href="./homepage.jsp" target="right">新闻上传</a><br/>
  		<a href="./homepage.jsp" target="right">信息发布</a><br/>
  </body>
</html>
