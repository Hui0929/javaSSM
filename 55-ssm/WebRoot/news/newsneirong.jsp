<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsneirong.jsp' starting page</title>
    
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
   
    
  		<td  background="./images/log.jpg">
  		<c:forEach var="contentList" items="${contentList}" varStatus="stat">
  		<tr height="40">
  		
  			<a>标题是：<td align=center>${contentList.title}</td></a><br/>
  			<a>内容是：	<td align=center>${contentList.neirong}</td></a><br/>
			<a>作者是：	<td align=center>${contentList.acthor}</td></a><br/>
			<a>类型是：	<td align=center>${contentList.kind}</td></a><br/>
  			<a>评论： <td align=center>${contentList.pinglun}</td></a><br/>
  		</tr>
  		<br/>
  		<br/>
  		<tr>点击添加评论：</tr>
  		<form action="${pageContext.request.contextPath}/test/addpinglun.do?title=${contentList.title}"  method="POST">
    	
		内容：<textarea  name="pinglun" /></textarea>
   		<input type="submit"  value="发表评论"/>
   </form>
  		</c:forEach>
  		 </td>
		
  </body>
</html>
