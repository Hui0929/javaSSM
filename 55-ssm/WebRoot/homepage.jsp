<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myindex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/a.css" type="text/css"></link>
	<script language='javascript' src="./js/a.js"></script>
	
	<script type="text/javascript">
function setsubmit()
{
if(mylink.value == 0)
window.location='http://desktop-ea4h5ur:8080/55-ssm/login.jsp';
if(mylink.value == 1)
window.location='http://desktop-ea4h5ur:8080/55-ssm/index.jsp';
if(mylink.value == 2)
window.location='http://desktop-ea4h5ur:8080/55-ssm/admin/admindl.jsp';
}
</script>

  </head>
  

   <body onLoad="image()">
  
   <div id="a">
    <div id="map1">
    <tr>
   <td  >
    <font size=8px color=white ><b><i>&nbsp;&nbsp;瓯江学院校园网</i></b></font>
 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="./index.jsp"><font size=4px color=white >首页</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="http://www.ojc.zj.cn/Col/Col1203/Index.aspx"><font size=4px color=white >人才培养</font></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.ojc.zj.cn/Col/Col1201/Index.aspx"><font size=4px color=white >教学科研</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="http://job.ojc.zj.cn/"><font size=4px color=white >创业就业</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <td height="30" align="right" color="#333"><font size=4px color=white >身份：</font></td>
                  <td align="left"><select name="mylink" id="mylink">
                <OPTION value="">请选择</option>
				<OPTION value="0">学生登录</OPTION>
				<OPTION value="1">学生注册</OPTION>
				<OPTION value="2">管理员登录</OPTION>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" id="btn" value="提交"  onclick="setsubmit(this)"  style="background-color: #7ED321;width: 66px;height:30px;color: #FFFFFF"/>
&nbsp;&nbsp;&nbsp;&nbsp;
<font color="black">欢迎&nbsp;&nbsp;</font><font color=blue><u><%=request.getSession().getAttribute("uname")%></u></font>&nbsp;&nbsp;登录！
<a href="./homepage.jsp">退出<%session.removeAttribute("uname");  %></a>&nbsp;&nbsp;&nbsp;&nbsp;
     
   </td>
   </tr>
   
    </div>
   
     <div id="head1" > 
	<a href="http://www.ojc.zj.cn/"><img id="image" src="image/food4.jpg" width="100%" height="100%"background-size:cover；/></a>
	</div>

  <div id="left1" > 
  	<div id="c" height=20% ><font size=5px color=red><b><i><center>重要通知</center></i></b></font></div>
  	<div height=80%><marquee direction="up" onMouseOver="this.stop()" align="middle" bgcolor="#CCCCCC" onMouseOut="this.start()" behavior="scroll" > 
  		SSH框架开发技术--邹董董老师--北-7-403<br/><br/>
  		WEB应用系统开发综合实验--潘俊老师--北-7-706<br/><br/>
  		 中国近现代史纲要--胡小平老师--2018.7.1<br/><br/>
  		IT项目管理--邓文华老师--2018.7.2--13.30到15.30<br/><br/>
  		爬虫与数据分析--邱儒老师--2018.7.3--9.00到11.00<br/><br/>
  		XML程序设计--柳幼松老师--2018.7.6--13.30到15.30</marquee> </div>
    </div> 
   <div id="left2" >
   		<div id="c" height=20% ><font size=5px color=red><b><i><center>我要上传新闻</center></i></b></font></div>
   		<div height=80%>
   		<form action="${pageContext.request.contextPath}/test/addnews.do" method="POST">
    	标题：<input type="text" name="title"  /><br/><br/>
		内容：<textarea  name="neirong" /></textarea><br/><br/> 
		类型：<input type="text" name="kind"  /><br/><br/> 
		作者: &nbsp;<input type="text" name="acthor"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		<input type="submit"  value="上传"/>
   </form>
   		</div>
   
   </div>
   <div id="right1" > 
  <iframe src="./frame/indexget.jsp" width=100% height=100% marginwidth=0>
    
     
     </div>
  </div>
  </body>
</html>

