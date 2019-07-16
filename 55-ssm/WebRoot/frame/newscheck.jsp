<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsgl.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="./css/a.css" type="text/css"></link>
  </head>
  
  <body >
  <center>
    <table  width="500" border="0" cellspacing="0" cellpadding="0">
  		<tr height="40">
  			<td align=center>序号</td>
  			<td align=center>标题</td>
  			<td align=center>内容</td>
  			<td align=center>类型</td>
  			<td align=center>作者</td>
  			<td align=center>删除</td>
  		</tr>
  		<c:forEach var="list" items="${list}" varStatus="stat">
  		<tr height="40">
  			<td align=center>${list.id} </td>
  			<td align=center>${list.title}</td>
  			<td align=center>${list.neirong}</td>
  			<td align=center>${list.kind}</td>
  			<td align=center>${list.acthor}</td>
  			<td><a type="button"  href="${pageContext.request.contextPath}/test/delUser.do?id=${list.id}" >
                                
                                    删除</a></td>
  		</tr>
  		</c:forEach>
  	</center>	
  </body>
</html>
