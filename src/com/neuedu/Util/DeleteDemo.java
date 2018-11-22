package com.neuedu.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDemo extends allDemo {
    @Override
    public boolean deleteExists(String sql, Integer id) {
        //连接数据库
        Connection conn = DAODemo.getConn();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setObject(1,id);
            int i = ps.executeUpdate();
            if(i > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
