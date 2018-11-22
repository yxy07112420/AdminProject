package com.neuedu.sevletDemo;

import com.neuedu.Util.DeleteDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteShopsServlet",urlPatterns = "/DeleteShopsServlet")
public class DeleteShopsServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取id值
        Integer deleteConter = Integer.parseInt(req.getParameter("deleteConter"));
        DeleteDemo demo = new DeleteDemo();
        boolean b = (boolean) demo.deleteExists("delete from shops where shopId= ?", deleteConter);
        if(b){
            req.setAttribute("error","删除数据失败");
            System.out.println("删除数据失败");
            req.getRequestDispatcher("selectShops.jsp").forward(req,resp);
        }else {
            req.setAttribute("error","删除数据成功");
            System.out.println("删除数据成功");
            req.getRequestDispatcher("selectShops.jsp").forward(req,resp);
        }
    }
}
