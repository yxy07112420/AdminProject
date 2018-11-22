<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/17
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/Login.css"/>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/Login.js"></script>
    <link rel="icon" href="img/logo.png" type="image/x-icon"/>
  </head>
  <body>
      <div id="all">
        <div id="login">
          <h1>管理员登录</h1>
          <div id="center">
            <form action="userServlet" method="post">
              <table cellspacing="10px" cellpadding="20px">
                <tr>
                  <td><lable for="username">用户名：</lable></td>
                  <td><input type="text" id="username" name="username"/></td>
                  <td></td>
                </tr>
                <tr>
                  <td>密&nbsp;&nbsp;&nbsp;码：</td>
                  <td><input type="password" id="password" name="password"/></td>
                  <td></td>
                </tr>
                <tr>
                  <td colspan="3" style="color: red">
                    <%
                      System.out.println(request.getAttribute("massrgs"));
                      if(request.getAttribute("massrgs")!=null){
                    %>
                       <%=request.getAttribute("massrgs")%>
                    <%
                      }
                    %>
                  </td>
                </tr>
              </table>
              <div id="submit">
                <input type="submit" value="登录"/>
              </div>
            </form>
          </div>
          <div id="bottom">
              <div class="bottoms">
                <img src="img/forget.svg">
                <span>忘记密码</span>
              </div>
              <div class="bottoms">
                <img src="img/forget.svg">
                <span>忘记用户名</span>
              </div>
            <a href="AdminSingIn.jsp">
              <div class="bottoms">
                <img src="img/singin.svg">
                <span>注册</span>
              </div>
            </a>
          </div>
      </div>
      </div>
  </body>
</html>
