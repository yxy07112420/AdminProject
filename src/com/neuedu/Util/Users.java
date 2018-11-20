package com.neuedu.Util;

import java.sql.*;

public class Users {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    //创建数据库连接
    public static Connection getConn(){
        //创建连接
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shops","root","root");
            return conn;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //创建关闭资源的方法
    public static void closeIo(Connection conn,PreparedStatement ps,ResultSet rs){
        if(null != rs){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(null != ps){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }if(null != conn){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    //执行sql语句
    public static boolean isExists(String username,String password){
        //获取数据库连接
        Connection conn = getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select * from AdminUsers where username = ? and  password = ?");
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeIo(conn,ps,rs);
        }
        return false;
    }
    //增加商家的方法
    public static int updateAdminUsers(String sql,Object... objects){
        //创建数据库连接
        Connection conn = getConn();
        //执行sql语句
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            for(int i = 0;i < objects.length;i++){
                ps.setObject(i+1,objects[i]);
            }
            //返回受影响的行数
            int i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeIo(conn,ps,null);
        }
        return 0;
    }
    //执行sql语句
    public static boolean addIsExists(String username,String userId,String telphone,String shopName){
        //获取数据库连接
        Connection conn = getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select * from AdminUsers where username = ? or userId = ? or telphone = ? or shopName = ? ");
            ps.setString(1,username);
            ps.setString(2,userId);
            ps.setString(3,telphone);
            ps.setString(4,shopName);
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeIo(conn,ps,rs);
        }
        return false;
    }
}
