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
    <table  width="500" border="0" cellspacing="0" cellpadding="0">
  		<tr height="40">
  			<td align=center>学号</td>
  			<td align=center>用户名</td>
  			<td align=center>密码</td>
  			
  			<td align=center>操作</td>
  		</tr>
  		<c:forEach var="list" items="${studentlist}" varStatus="stat">
  		<tr height="40">
  			<td align=center>${list.id} </td>
  			<td align=center>${list.name}</td>
  			<td align=center>${list.age}</td>
  			
  			
  			<td><center><a type="button"  href="${pageContext.request.contextPath}/test/delstudent.do?id=${list.id}" >
                                
                                    删除</a></center></td>
  		</tr>
  		</c:forEach>
  	</center>	
  </table>
  </body>
</html>
