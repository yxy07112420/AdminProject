package com.neuedu.interfaces;


import com.neuedu.ClassDemo.Shops;

import java.util.List;

public interface Selectable{
    public List<Shops> queryShops();
    public boolean addIsExists(String sql,String object);
    public boolean deleteExists(String sql,Integer id);
}
