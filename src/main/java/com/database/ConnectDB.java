package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConnectDB {
    public Connection connect(){
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://52.50.85.47:3306/jsp06", "admin", "admin123");
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args)throws Exception{
        ConnectDB condb=new ConnectDB();
        Connection conn=condb.connect();
        String sql="SELECT stu.birthday FROM " +
                "jsp06.student stu where stu.id=30";
        if(conn!=null){
            ResultSet ret=conn.prepareStatement(sql).executeQuery();
            while (ret.next())
                System.out.print(ret.getString(1));
        }
        conn.close();
    }
}
