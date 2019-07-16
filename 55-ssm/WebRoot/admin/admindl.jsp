<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admindl.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body id="c" >
  	<center>
  <br><br><br><br><br>
  <table width="684" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="292" align="center" valign="top" background="./images/log.jpg">
      <table width="350" height="201" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="72" align="center"><h3>校园后台管理界面</h3></td>
        </tr>
        <tr>
          <td align="center" valign="top">
             <form action="${pageContext.request.contextPath}/test/gldenglu.do"method="POST">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                
               
                <tr>
                 <br/>
                  <td width="37%" height="30" align="right" color="#333">用户名： <br/><br/></td>
                  <td width="300" align="left"><input id="username" name="glname" type="text"/>
                  <br/>
                   <br/>
                   </td>
                  </tr>
                <tr>
                  <td height="30" align="right" color="#333">密码： <br/><br/></td>
                  <td align="left"><input id="password" name="glpass" type="password"/> <br/><br/></td>
                  </tr>
                <tr>
                  <td height="30" colspan="2" align="center"><label>
                   <input type="submit" value="登录"  >
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
