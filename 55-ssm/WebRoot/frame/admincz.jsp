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
    
    <title>My JSP 'admincz.jsp' starting page</title>
    
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
    <%String str="select * from admin";
     try {  Statement stmt=null; ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/news?useUnicode=true&characterEncoding=utf8";//改成这句，就可以了。
		String username = "root";
		String password = "admin";
        Connection conn = DriverManager.getConnection(url,username,password);   
        stmt=(Statement)conn.createStatement();
        rs=stmt.executeQuery(str);
        String snew="";
        String spas="";
        while(rs.next())
        {String stitle,sid,scon;        
          stitle=rs.getString("name");
          sid=rs.getString("id");
          scon=rs.getString("password");
     	  snew=snew+"&nbsp;"+"&nbsp;"+"管理员序号:"+sid+"&nbsp;"+"&nbsp;"+"用户名:"+stitle+"&nbsp;"+"&nbsp;"+"密码:"+scon+"&nbsp;"+"&nbsp;"+"<br>";}
           out.print(snew);  }
       catch(Exception ex){ ex.printStackTrace();
      out.println("失败");   }
          
     %>
  </body>
</html>
