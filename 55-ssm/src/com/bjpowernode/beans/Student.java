package com.bjpowernode.beans;

import com.sun.org.apache.bcel.internal.generic.RETURN;

public class Student {
		private Integer id;
		private String name;
		private String age;
		
		
		public Student(String delname, int i) {
			super();
			// TODO Auto-generated constructor stub
		}
		public Student() {
			super();
			// TODO Auto-generated constructor stub
		}
	
		
		public Student(String name, String age) {
			super();
			this.name = name;
			this.age = age;
		}


		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getAge() {
			return age;
		}
		public void setAge(String age) {
			this.age = age;
		}
		@Override
		public String toString()
		{
			return "Student[id="+id+", name="+name+", age="+age+"]";
		}
		
}	
