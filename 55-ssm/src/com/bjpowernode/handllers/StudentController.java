package com.bjpowernode.handllers;

import java.awt.Window;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import com.bjpowernode.beans.Student;
import com.bjpowernode.beans.Tb_news;
import com.bjpowernode.beans.Zancun;
import com.bjpowernode.dao.IStudentDao;
import com.bjpowernode.service.IStudentService;
import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
import com.sun.java.swing.plaf.windows.WindowsClassicLookAndFeel;
import com.sun.java.swing.plaf.windows.resources.windows;

@Controller
@RequestMapping("/test")
@SessionAttributes("user")
public class StudentController {
	@Autowired
	@Qualifier("studentService")
	
	private  IStudentService service;
	private IStudentDao userDao;

	public void setService(IStudentService service) {
		this.service = service;
	}
//注册
@RequestMapping("register.do")
	public String doRegister(String name,String age) throws Exception {
		Student student=new Student(name, age);
		service.addStudent(student);
		return "/login.jsp";
	}
//删除
@RequestMapping("login.do")
public String dodeltel(String delname) throws Exception {
	Student student=new Student(delname, 0);
	service.delstudent(student);
	return "/homepage.jsp";
}
//登录
@RequestMapping("denglu.do")
public String checkLogin(HttpServletRequest user ){
	String a ;
	if(null!=service.checkLogin(user.getParameter("username"),user.getParameter("userpass")))
	{  a=user.getParameter("username");
		user.getSession().setAttribute("uname", a);
		return "../homepage.jsp";
	}
	else
		return "../error.jsp";

}
//管理员登录
@RequestMapping("gldenglu.do")
public String checkadmin(HttpServletRequest user ){
	String a ;
	if(null!=service.checkadmin(user.getParameter("glname"),user.getParameter("glpass")))
	{  a=user.getParameter("glname");
		user.getSession().setAttribute("uname", a);
		return "../admin/adminindex.jsp";
	}
	else
		return "../error.jsp";

}
//新闻上传
@RequestMapping("addnews.do")
public String addnews(HttpServletRequest news)
{
	Zancun zancun=new Zancun(news.getParameter("title"),news.getParameter("neirong"),news.getParameter("kind"),news.getParameter("acthor"));
	service.addnews(zancun);
	System.out.println("恭喜你");
	
	return "../success.jsp";
}
//暂存的新闻展示
@RequestMapping("qqq.do")
public String show(ModelMap modelMap)
{	
	List<Zancun> goodslList = new ArrayList<Zancun>();
	

	
	for (Zancun zancun:service.selall())
	{
		goodslList.add(zancun);
	}
	modelMap.addAttribute("list",goodslList);
	
	
	
	return "../qqqqq.jsp";
}
//删除
@RequestMapping("delUser.do") 
public String deleteUser(int id,Model model){
    model.addAttribute("user", service.deleteUser(id));  
    return "/error.jsp";
}
@RequestMapping("passnews.do") 
public String passnewsString(int id,Model model){
    model.addAttribute("passn", service.passnews(id));  
    return "../qqqqq.jsp";
}


//学生表的查询
@RequestMapping("qqqstudent.do")
public String showstudent(ModelMap modelMap)
{	
	
	List<Student> studentlist = new ArrayList<Student>();
	
	for (Student student:service.selstudents())
	{
		studentlist.add(student);
	}
	modelMap.addAttribute("studentlist",studentlist);
	return "../student/glstudent.jsp";
}
//学生表的删除功能
@RequestMapping("delstudent.do") 
public String delstudent(int id,Model model){
    model.addAttribute("student", service.deletestudnet(id));  
    return "../student/glstudent.jsp";
}

//分类查询新闻表
@RequestMapping("selnews.do") 
public String getnews1(Model md,HttpServletRequest request){
	String kind =request.getParameter("choose");
    	List<Tb_news> newslist =new ArrayList<Tb_news>();
    	for(Tb_news tb_news:service.selnews(kind))
    	{
    		newslist.add(tb_news);
    	}
    	md.addAttribute("newslist",newslist);
    	
    	return "../news/newfind.jsp";

}
@RequestMapping("getnr.do") 
public String getnr(Model nr,HttpServletRequest request){
		String aaa= request.getParameter("one");
		List<Tb_news> contentList =new ArrayList<Tb_news>();
		int i =1;
		for(Tb_news tb_news:service.getneirong(aaa))
		{
			contentList.add(tb_news);
		}
		nr.addAttribute("contentList",contentList);
		System.out.println(contentList.size());
		//return "../news/newsneirong.jsp";
		return "../news/newsneirong.jsp";
}
//显示所有新闻
@RequestMapping("getallnews.do")
public String getallnews(ModelMap mp1)
{	
	List<Tb_news> newsallList = new ArrayList<Tb_news>();
	for (Tb_news tb_news:service.getAllnews())
	{
		newsallList.add(tb_news);
	}
	mp1.addAttribute("newsallList",newsallList);
	return "../admin/allnewssee.jsp";
}
//管理员对新闻的操作
@RequestMapping("delallnews.do") 
public String delallnews(int id,Model model){
    model.addAttribute("student", service.deleteAllnews(id));  
    return "../admin/allnewssee.jsp";
}
//添加评论
@RequestMapping("addpinglun.do")
public String addpinglun(HttpServletRequest ppll)
{	String title = ppll.getParameter("title");
	String pinglun=ppll.getParameter("pinglun");
	service.addpl(pinglun, title);
	return "../success.jsp";
}
//删除评论
@RequestMapping("delallpl.do")
public String delallpl(HttpServletRequest request,Model model){
    String title = request.getParameter("title");
    System.out.println(title);
	model.addAttribute("tb_news", service.delallpl(title));  
    return "../admin/allnewssee.jsp";
}
}



