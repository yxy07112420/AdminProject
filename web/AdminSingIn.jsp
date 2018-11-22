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
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/insertAdmin.js"></script>
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
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td1">账户名</td>
                    <td class="td2">
                        <input type="text" name="username" id="username"/>
                    </td>
                    <%
                        if(request.getAttribute("username") != null){
                    %>
                        <td class="td4">
                            <div class="errorresult">
                                <span>✘</span>
                            </div>
                            <span class="errorresultConter"><%=request.getAttribute("username")%></span>
                        </td>
                    <%
                        }else{
                    %>
                        <td class="td3">
                            <div class="result">
                                <span>✔</span>
                            </div>
                            <span class="resultConter">正确</span>
                        </td>
                    <%
                        }
                    %>


                </tr>
                <tr>
                    <td class="td1">密码</td>
                    <td class="td2">
                        <input type="password" name="password" id="password"/>
                    </td>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                </tr>
                <tr>
                    <td class="td1">确认密码</td>
                    <td class="td2">
                        <input type="password" name="checkPass" id="checkPass"/>
                    </td>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                </tr>
                <tr>
                    <td class="td1">身份证号</td>
                    <td class="td2">
                        <input type="text" name="userId" id="userId"/>
                    </td>
                    <%
                        if(request.getAttribute("userCard") != null){
                    %>
                    <td class="td4">
                        <div class="errorresult">
                            <span>✘</span>
                        </div>
                        <span class="errorresultConter"><%=request.getAttribute("userCard")%></span>
                    </td>
                    <%
                    }else{
                    %>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td class="td1">手机号</td>
                    <td class="td2">
                        <input type="text" name="telphone" id="telphone"/>
                    </td>
                    <%
                        if(request.getAttribute("tel") != null){
                    %>
                    <td class="td4">
                        <div class="errorresult">
                            <span>✘</span>
                        </div>
                        <span class="errorresultConter"><%=request.getAttribute("tel")%></span>
                    </td>
                    <%
                    }else{
                    %>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td class="td1">店铺名</td>
                    <td class="td2">
                        <input type="text" name="shopName" id="shopName"/>
                    </td>
                    <%
                        if(request.getAttribute("shopName") != null){
                    %>
                    <td class="td4">
                        <div class="errorresult">
                            <span>✘</span>
                        </div>
                        <span class="errorresultConter"><%=request.getAttribute("shopName")%></span>
                    </td>
                    <%
                    }else{
                    %>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td class="td1">销售商品的类型</td>
                    <td class="td2">
                        <select name= "types">
                            <option value="1">化妆品</option>
                            <option value="2">电子产品</option>
                            <option value="3">服装</option>
                        </select>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td1">店铺简介</td>
                    <td class="td2">
                        <input type="text" name="shopConter" id="shopConter"/>
                    </td>
                    <td class="td3">
                        <div class="result">
                            <span>✔</span>
                        </div>
                        <span class="resultConter">正确</span>
                    </td>
                </tr>
                <tr>
                    <td class="td1"></td>
                    <td id="submit">
                        <input type="submit" value="提交" id="singIn"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
