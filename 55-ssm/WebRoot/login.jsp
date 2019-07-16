<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	<link rel="stylesheet" href="css/a.css" type="text/css"></link>
	-->

  </head>
  
  <body id="login">
    <center>
  <br><br><br><br><br>
  <table width="684" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="292" align="center" valign="top" background="./images/log.jpg">
      <table width="350" height="201" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="72" align="center"><h3>校园用户登录注册界面</h3></td>
        </tr>
        <tr>
          <td align="center" valign="top">
             <form action="${pageContext.request.contextPath}/test/denglu.do "method="POST">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
                
               
                <tr>
                 <br/>
                  <td width="37%" height="30" align="right" color="#333">用户名： <br/><br/></td>
                  <td width="300" align="left"> <input id="username" name="username" type="text"/>
                  <br/>
                   <br/>
                   </td>
                  </tr>
                <tr>
                  <td height="30" align="right" color="#333">密&nbsp;&nbsp;&nbsp;&nbsp;码： <br/><br/></td>
                  <td align="left"><input id="password" name="userpass" type="password"/> <br/><br/></td>
                  </tr>
                <tr>
                  <td height="30" colspan="2" align="center"><label>
                  <input type="submit" value="登录"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="button" value="注册" onclick="window.location.href='./index.jsp'"> 
                  </label></td>
                  </tr>
              </table>
              </form>
          
          </td>
        </tr>
      </table></td>
    </tr>
  </table>


</center>
  </body>
</html>
