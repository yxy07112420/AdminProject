package com.neuedu.sevletDemo;

import com.neuedu.ClassDemo.Shops;
import com.neuedu.Util.ShopSelectDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "singoShopServlet",urlPatterns = "/singoShopServlet")
public class singoShopServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取前端的id商品id值
        String username = req.getParameter("updateConter");
        System.out.println(username);
        //获取查询结果
        ShopSelectDemo selectDemo = new ShopSelectDemo();
        List<Shops> shops = selectDemo.queryShops(username);
        System.out.println(shops);
        req.setAttribute("selectShop",shops);
        req.getRequestDispatcher("updateShops.jsp").forward(req,resp);
    }
}
