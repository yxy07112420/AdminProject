package com.neuedu.sevletDemo;

import com.neuedu.Util.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addAdminServlet",urlPatterns = "/addAdminServlet")
public class addAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取前端传来的数据
        //获取开店类型
        String shopType = request.getParameter("shopType");
        if(shopType == "singo"){
            shopType = "个体";
        }else if(shopType == "business"){
            shopType = "商业";
        }
        //获取用户名
        String username = request.getParameter("username");
        //获取输入的密码
        String pass = request.getParameter("password");
        //获取再次输入的密码
        String checkpass = request.getParameter("checkPass");
        //获取身份证号
        String userId = request.getParameter("userId");
        //获取手机号
        String telphone = request.getParameter("telphone");
        //获取店铺名
        String shopName = request.getParameter("shopName");
        //获取店铺简介
        String shopConter = request.getParameter("shopConter");
        //获取销售的商品类型
        String types = request.getParameter("types");
        System.out.println(shopType+"   "+username+"   "+pass+"   "+checkpass+"   "+shopName+"  "+types);
        //判断用户名、身份证号、手机号和店铺名是否存在
        boolean b = Users.addIsExists(username, userId, telphone, shopName);
        //判断两次密码是否一致
        if(b == false && pass.equals(checkpass)){
            int i = Users.updateAdminUsers("insert into adminusers values(?,?,?,?,?,?,?,?)",username,pass,shopType,userId,telphone,shopName,types,shopConter);
            System.out.println(i);
            if(i > 0){
                System.out.println("index.jsp");
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else {
                System.out.println("AdminSingIn.jsp");
                request.getRequestDispatcher("AdminSingIn.jsp").forward(request,response);
            }
        }else {
            System.out.println("AdminSingIn.jspaklsjdl");
            request.getRequestDispatcher("AdminSingIn.jsp").forward(request,response);
        }
    }
}
