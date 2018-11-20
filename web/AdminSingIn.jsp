<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/19
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卖家注册</title>
    <link rel="stylesheet" href="css/adminSingIn.css">
</head>
<body>
    <div id="adminAll">
        <form action="addAdminServlet" method="post">
            <table>
                <tr>
                    <td class="td1">开店类型</td>
                    <td id="shopType">
                        <input type="radio" name="shopType" value="singo"/>个体
                        <input type="radio" name="shopType" value="business"/>商业
                    </td>
                </tr>
                <tr>
                    <td class="td1">账户名</td>
                    <td class="td2">
                        <input type="text" name="username" id="username"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">密码</td>
                    <td class="td2">
                        <input type="password" name="password" id="password"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">确认密码</td>
                    <td class="td2">
                        <input type="password" name="checkPass" id="checkPass"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">身份证号</td>
                    <td class="td2">
                        <input type="text" name="userId" id="userId"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">手机号</td>
                    <td class="td2">
                        <input type="text" name="telphone" id="telphone"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">店铺名</td>
                    <td class="td2">
                        <input type="text" name="shopName" id="shopName"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1">销售商品的类型</td>
                    <td class="td2">
                        <select name= "types">
                            <option>请选择商品的类型</option>
                            <option value="1">化妆品</option>
                            <option value="2">电子产品</option>
                            <option value="3">服装</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="td1">店铺简介</td>
                    <td class="td2">
                        <input type="text" name="shopConter" id="shopConter"/>
                    </td>
                </tr>
                <tr>
                    <td class="td1"></td>
                    <td id="submit">
                        <input type="submit" value="提交"/>
                    </td>
                </tr>
            </table>
        </form>

    </div>

</body>
</html>
