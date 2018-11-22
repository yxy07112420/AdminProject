package com.neuedu.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InsertSeller extends allDemo {
    @Override
    public boolean addIsExists(String sql,String username) {
        //获取数据库连接
        Connection conn = DAODemo.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DAODemo.closeIo(conn,ps,rs);
        }
        return false;
    }
}
