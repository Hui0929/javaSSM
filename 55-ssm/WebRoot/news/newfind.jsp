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
    
    <title>My JSP 'newfind.jsp' starting page</title>
    
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
    <center>
    <table  width="600" border="0" cellspacing="0" cellpadding="0">
  		<tr height="40">
  			
  			<td align=center>标题</td>
  			<td align=center>作者</td>
  			<td align=center>类型</td>
  			
  			<td align=center>前往查看</td>
  			</tr>
  		<c:forEach var="newslist" items="${newslist}" varStatus="stat">
  		<tr height="40">
  		
  			<td align=center>${newslist.title}</td>
  			
			<td align=center>${newslist.acthor}</td>
			<td align=center>${newslist.kind}</td>
  			<td> <center><a type="button"  href="${pageContext.request.contextPath}/test/getnr.do?one=${newslist.title}" >
                                
                                   查看</a></center></td>
  		</tr>
  		</c:forEach>
  		  </table>
  		</center>

  </body>
</html>
