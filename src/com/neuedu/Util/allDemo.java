package com.neuedu.Util;

import com.neuedu.ClassDemo.Shops;
import com.neuedu.interfaces.Selectable;

import java.util.List;

public class allDemo implements Selectable {
    //查询商品信息
    @Override
    public List<Shops> queryShops() {
        return null;
    }
    //添加商家
    @Override
    public boolean addIsExists(String sql, String object) {
        return false;
    }
    //删除信息
    @Override
    public boolean deleteExists(String sql, Integer id) {
        return false;
    }
}
