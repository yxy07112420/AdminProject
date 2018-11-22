package com.neuedu.sevletDemo;

import com.neuedu.ClassDemo.Shops;
import com.neuedu.Util.ShopSelectDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

@WebServlet(name = "SelectShops",urlPatterns = "/selectShops")
public class SelectShops extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取查询结果
        ShopSelectDemo selectDemo = new ShopSelectDemo();
        List<Shops> shops = selectDemo.queryShops();
        req.setAttribute("selectShops",shops);
        req.getRequestDispatcher("selectShops.jsp").forward(req,resp);
    }
}
