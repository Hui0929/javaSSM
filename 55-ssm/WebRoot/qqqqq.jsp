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
    
    <title>My JSP 'qqqqq.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#FFE4E1">
  <center>
    <table  width="700" border="0" cellspacing="0" cellpadding="0">
  		<tr height="40">
  			<td align=center>序号</td>
  			<td align=center>标题</td>
  			<td align=center>内容</td>
  			<td align=center>类型</td>
  			<td align=center>作者</td>
  			<td align=center>通过</td>
  			<td align=center>不通过</td>
  		</tr>
  		<c:forEach var="list" items="${list}" varStatus="stat">
  		<tr height="40">
  			<td align=center>${list.id} </td>
  			<td align=center>${list.title}</td>
  			<td align=center>${list.neirong}</td>
  			<td align=center>${list.kind}</td>
  			<td align=center>${list.acthor}</td>
  			<td><center><a type="button"  href="${pageContext.request.contextPath}/test/passnews.do?id=${list.id} and ${pageContext.request.contextPath}/test/delUser.do?id=${list.id} " >
                   增加</a></center></td>
  			<td><center><a type="button"  href="${pageContext.request.contextPath}/test/delUser.do?id=${list.id}" >
          	 删除</a></center></td>
  		</tr>
  		</c:forEach>
  	</center>	
  </table>
  </body>
</html>
