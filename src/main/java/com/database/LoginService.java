package com.database;

import com.common.User;

import java.sql.Connection;
import java.sql.ResultSet;

public class LoginService {
    public User login(String username,String pass)throws Exception{
        User user=null;
        ConnectDB conDB=new ConnectDB();
        Connection conn=conDB.connect();
        String sql="SELECT username,password,fullname from users where username='"+username+"'";
        if(conn!=null){
            ResultSet ret=conn.prepareStatement(sql).executeQuery();
            while (ret.next()){
                user=new User();
                user.setUsername(ret.getString("username"));
                user.setPassword(ret.getString("password"));
                user.setFullName(ret.getString("fullname"));
            }
        }
        conn.close();
        return user;
    }
}
