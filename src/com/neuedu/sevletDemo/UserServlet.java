package com.neuedu.sevletDemo;

import com.neuedu.Util.DAODemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = "/userServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取输入的用户名和密码
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //判断输入的是否存在
        boolean exists = DAODemo.isExists(username, password);
        if(exists){
            req.getRequestDispatcher("Main.jsp").forward(req,resp);
        }else{
            req.setAttribute("massrgs","登录失败，用户名密码有误");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
}
