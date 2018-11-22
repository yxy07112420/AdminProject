package com.neuedu.Util;

import com.neuedu.ClassDemo.Shops;
import com.neuedu.interfaces.Selectable;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ShopSelectDemo extends allDemo {
    @Override
    public List<Shops> queryShops() {
        //获取数据库连接
        Connection conn = DAODemo.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //创建List集合
        List<Shops> shop = new ArrayList<>();
        try {
            ps = conn.prepareStatement("select * from shops");
            rs = ps.executeQuery();
            while (rs.next()){
                //获取查询到的结果
                int shopId = rs.getInt("shopId");
                String shopName = rs.getString("shopName");
                String shopType = rs.getString("shopType");
                String shopStyle = rs.getString("shopStyle");
                Date shopTime = rs.getDate("shopTime");
                BigDecimal shopMoney = rs.getBigDecimal("shopMoney");
                int shopNumber = rs.getInt("shopNumber");
                int shopSellNumber = rs.getInt("shopSellNumber");
                String shopImages = rs.getString("shopImages");
                String shopDescribe = rs.getString("shopDescribe");
                Date shopCheckTime = rs.getDate("shopCheckTime");
                //创建实体类
                Shops shops = new Shops(shopId,shopName,shopType,shopStyle,shopTime,shopMoney,shopNumber,shopSellNumber,shopImages,shopDescribe,shopCheckTime);
                shop.add(shops);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DAODemo.closeIo(conn,ps,rs);
        }
        return shop;
    }
    public List<Shops> queryShops(String shopId) {
        //获取数据库连接
        Connection conn = DAODemo.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //创建List集合
        List<Shops> shop = new ArrayList<>();
        try {
            ps = conn.prepareStatement("select * from shops where shopId = ?");
            ps.setString(1,shopId);
            rs = ps.executeQuery();
            while (rs.next()){
                //获取查询到的结果
                int shopId1 = rs.getInt("shopId");
                String shopName1 = rs.getString("shopName");
                String shopType = rs.getString("shopType");
                String shopStyle = rs.getString("shopStyle");
                Date shopTime = rs.getDate("shopTime");
                BigDecimal shopMoney = rs.getBigDecimal("shopMoney");
                int shopNumber = rs.getInt("shopNumber");
                int shopSellNumber = rs.getInt("shopSellNumber");
                String shopImages = rs.getString("shopImages");
                String shopDescribe = rs.getString("shopDescribe");
                Date shopCheckTime = rs.getDate("shopCheckTime");
                //创建实体类
                Shops shops = new Shops(shopId1,shopName1,shopType,shopStyle,shopTime,shopMoney,shopNumber,shopSellNumber,shopImages,shopDescribe,shopCheckTime);
                shop.add(shops);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DAODemo.closeIo(conn,ps,rs);
        }
        return shop;
    }
}
