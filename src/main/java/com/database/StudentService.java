package com.database;

import com.common.User;
import com.helloword.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentService {
    public List<Student> getListStudent() throws Exception{
        List<Student> lst=new ArrayList<>();
        ConnectDB conDB=new ConnectDB();
        Connection conn=conDB.connect();
        String sql="SELECT * from student";
        if(conn!=null){
            ResultSet ret=conn.prepareStatement(sql).executeQuery();
            while (ret.next()){
                Student student=new Student();
                student.setId(ret.getInt("id"));
                student.setName(ret.getString("name"));
                student.setClassName(ret.getString("classname"));
                student.setMark(ret.getInt("mark"));
                lst.add(student);
            }
        }
        conn.close();
        return lst;
    }
    public Student findStudentById(int id)throws Exception{
        Student student=null;
        ConnectDB conDB=new ConnectDB();
        Connection conn=conDB.connect();
        String sql="SELECT * from student where id=?";
        if(conn!=null) {
            PreparedStatement sttm = conn.prepareStatement(sql);
            sttm.setInt(1, id);
            ResultSet ret = sttm.executeQuery();
            while (ret.next()) {
                System.out.print("student...");
                student = new Student();
                student.setId(ret.getInt("id"));
                student.setName(ret.getString("name"));
                student.setClassName(ret.getString("classname"));
                student.setMark(ret.getInt("mark"));
            }
        }
        return student;
    }
}
