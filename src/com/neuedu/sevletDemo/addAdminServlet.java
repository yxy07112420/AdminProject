package com.neuedu.sevletDemo;

import com.neuedu.Util.DAODemo;
import com.neuedu.Util.InsertSeller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addAdminServlet",urlPatterns = "/addAdminServlet")
public class addAdminServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取前端传来的数据
        //获取开店类型
        String shopType = req.getParameter("shopType");
        if(shopType .equals("singo") ){
            shopType = "个体";
        }else if(shopType .equals("business") ){
            shopType = "商业";
        }
        System.out.println(shopType);
        //获取用户名
        String username = req.getParameter("username");
        //获取输入的密码
        String pass = req.getParameter("password");
        //获取再次输入的密码
        String checkpass = req.getParameter("checkPass");
        //获取身份证号
        String userId = req.getParameter("userId");
        //获取手机号
        String telphone = req.getParameter("telphone");
        //获取店铺名
        String shopName = req.getParameter("shopName");
        //获取店铺简介
        String shopConter = req.getParameter("shopConter");
        //获取销售的商品类型
        String types = req.getParameter("types");
        //判断用户名、身份证号、手机号和店铺名是否存在
        InsertSeller insertSeller = new InsertSeller();
        boolean b1 = insertSeller.addIsExists("select * from adminusers where username = ?", username);
        boolean b2 = insertSeller.addIsExists("select * from adminusers where userId = ?", userId);
        boolean b3 = insertSeller.addIsExists("select * from adminusers where telphone = ?", telphone);
        boolean b4 = insertSeller.addIsExists("select * from adminusers where shopName = ?", shopName);
        if(b1){
            req.setAttribute("username","用户名已存在");
            System.out.println("AdminSingIn1.jsp");
            req.getRequestDispatcher("AdminSingIn.jsp").forward(req, resp);
        }else if(b2){
            req.setAttribute("userCard","该身份证号已存在");
            System.out.println("AdminSingIn2.jsp");
            req.getRequestDispatcher("AdminSingIn.jsp").forward(req, resp);
        }else if(b3){
            req.setAttribute("tel","该手机号已存在");
            System.out.println("AdminSingIn3.jsp");
            req.getRequestDispatcher("AdminSingIn.jsp").forward(req, resp);
        }else if(b4){
            req.setAttribute("shopName","该店铺已存在");
            System.out.println("AdminSingIn4.jsp");
            req.getRequestDispatcher("AdminSingIn.jsp").forward(req, resp);
        }else{
            int i = DAODemo.updateAdminUsers("insert into adminusers values(?,?,?,?,?,?,?,?)", username, pass, shopType, userId, telphone, shopName, types, shopConter);
            System.out.println(i);
            if (i > 0) {
                System.out.println("index.jsp");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            } else {
                req.setAttribute("massage","注册失败");
                System.out.println("AdminSingIn5.jsp");
                req.getRequestDispatcher("AdminSingIn.jsp").forward(req, resp);
            }
        }
    }
}
