package com.neuedu.sevletDemo;

import com.neuedu.Util.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = "/userServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取输入的用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //判断输入的是否存在
        boolean exists = Users.isExists(username, password);
        if(exists){
            request.getRequestDispatcher("Main.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
