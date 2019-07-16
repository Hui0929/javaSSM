package com.bjpowernode.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bjpowernode.beans.Admin;
import com.bjpowernode.beans.Student;
import com.bjpowernode.beans.Tb_news;
import com.bjpowernode.beans.Zancun;
import com.bjpowernode.dao.IStudentDao;
import com.sun.crypto.provider.RSACipher;
@Service("studentService")
public class StudentServiceImpl implements IStudentService {
	
	@Resource(name="IStudentDao")
	private IStudentDao dao;


	public void setDao(IStudentDao dao) {
		this.dao = dao;
	}

	@Transactional
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		dao.insertStudent(student);
	}

	@Override
	public void delstudent(Student student) {
		// TODO Auto-generated method stub
		dao.delStudent(student);
	}
	public Student checkLogin(String name, String age) {

		Student user = dao.findByUsername(name);
		if(user != null && user.getAge().equals(age)) {
			return user;
		}
			return null;
	}
	
	public Admin checkadmin(String name, String password) {

		Admin user = dao.findByAdminname(name);
		if(user != null && user.getPassword().equals(password)) {
			return user;
		}
			return null;
	}
	public void addnews(Zancun zancun) {
		// TODO Auto-generated method stub
		dao.insertnews(zancun);
	}
	@Transactional
	public List<Zancun> selall()
	{return dao.getAll();}
	
	@Override
	    public boolean deleteUser(int id) {
	        return dao.deleteUser(id);
	    }
	@Override
    public boolean passnews(int id) {
        return dao.passnews(id);
    }
	@Transactional
	public List<Student> selstudents()
	{return dao.getstudentAll();}
	
	@Override
    public boolean deletestudnet(int id) {
        return dao.deletestudent(id);
    }
	
	@Override
	public List<Tb_news> selnews(String kind)
	{
		return dao.selnews(kind);
		
	}
	@Override
	public List<Tb_news> getneirong(String title)
	{
		return dao.getneirong(title);
		
	}
	@Transactional
	public List<Tb_news> getAllnews()
	{return dao.getAllnews();}
	
	@Override
    public boolean deleteAllnews(int id) {
        return dao.deleteAllnews(id);
    }
	@Override
    public void addpl(@Param("pinglun")String pinglun ,@Param("title")String title) {
         dao.addpl(pinglun,title);
    }
	@Override
    public boolean delallpl(String title) {
        return dao.delallpl(title);
    }
	
}
