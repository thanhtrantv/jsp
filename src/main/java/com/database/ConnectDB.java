package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConnectDB {
    public Connection connect(){
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/training",
                    "nam", "123456");
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args)throws Exception{
        ConnectDB condb=new ConnectDB();
        Connection conn=condb.connect();

        String sql4= "update training.user set password='9119' where username = 'user1'";
        if(conn!=null){
            conn.prepareStatement(sql4).executeUpdate();
        }
        //doc du lieu
//        String sql="SELECT * FROM " +
//                "training.user where username='user1'";
//        if(conn!=null) {
//            ResultSet ret = conn.prepareStatement(sql).executeQuery();
//            while (ret.next()) {
//                System.out.println(ret.getString(1));
//                System.out.println(ret.getString(2));
//                System.out.println(ret.getString(3));
//            }
//        }






        //them du lieu
//        String sql2= "insert into jsp07.user(user_name,password) value ('phuong','test')";
//        if(conn!=null){
//            conn.prepareStatement(sql2).execute();
//        }

        //xoa du lieu
//        String sql3= "delete from jsp07.user where user_name = 'phuong'";
//        if(conn!=null){
//            conn.prepareStatement(sql3).execute();
//        }

        //chinh sua
//        String sql4= "update jsp07.user set password='9119' where user_name = 'hai'";
//        if(conn!=null){
//            conn.prepareStatement(sql4).executeUpdate();
//        }
//
//
//        conn.close();
    }
}
