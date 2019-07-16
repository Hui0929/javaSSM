package com.bjpowernode.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bjpowernode.beans.Admin;
import com.bjpowernode.beans.Student;
import com.bjpowernode.beans.Tb_news;
import com.bjpowernode.beans.Zancun;

public interface IStudentService {

	void addStudent(Student student);
	void delstudent(Student student);
	Student checkLogin(String name,String age);
	Admin checkadmin(String name ,String password);
	void addnews(Zancun zancun);
	public List<Zancun> selall();
	boolean deleteUser(int id);
	boolean passnews(int id);
	public List<Student> selstudents();
	boolean deletestudnet(int id);
	public List<Tb_news> selnews(String kind);
	public List<Tb_news> getneirong(String title);
	public List<Tb_news> getAllnews();
	boolean deleteAllnews(int id);
	void addpl(@Param("pinglun")String pinglun, @Param("title")String title);
	boolean delallpl(String title);
}
