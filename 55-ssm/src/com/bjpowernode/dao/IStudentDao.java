package com.bjpowernode.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bjpowernode.beans.Admin;
import com.bjpowernode.beans.Student;
import com.bjpowernode.beans.Tb_news;
import com.bjpowernode.beans.Zancun;

public interface IStudentDao {
void insertStudent(Student student);
void delStudent(Student student);
Student findByUsername(String name);
Admin findByAdminname(String name);
void insertnews(Zancun zancun);
public List<Zancun> getAll();
boolean deleteUser(int id);
boolean passnews(int id);
public List<Student> getstudentAll();
boolean deletestudent(int id);
public List<Tb_news> selnews(String kind);
public List<Tb_news> getneirong(String title);
public List<Tb_news> getAllnews();
boolean deleteAllnews(int id);
void addpl(@Param("pinglun")String pinglun,@Param("title")String title);
boolean delallpl(String title);
}
