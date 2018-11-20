<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/18
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品信息</title>
</head>
<body>
    <div id="update">
        <div id="update_title">
            请输入您要选择修改的商品信息：<input type="text" id="updateConter" name="updateConter" placeholder="商品编号或者商品名称"/>
        </div>
        <div id="update_conter">
            <form action="updateShops.jsp" method="get">
                <table>
                    <tr>
                        <td width="130px"><span>商品编号：</span></td>
                        <td width="150px"><input type="text" id="shopId" name="shopId" placeholder="001"></td>
                        <td width="300px"><span></span></td>
                        <td width="130px"><span>商品名：</span></td>
                        <td width="150px"><input type="text" id="shopName" name="shopName" placeholder="鼠标1"></td>
                        <td width="300px"><span></span></td>
                    </tr>
                    <tr>
                        <td><span>商品类型：</span></td>
                        <td>
                            <select>
                                <option>计算机</option>
                                <option>电子产品</option>
                                <option>服装</option>
                                <option>手机</option>
                                <option>家电</option>
                            </select>
                        </td>
                        <td></td>
                        <td><span>商品品牌：</span></td>
                        <td><input type="text" id="shopType" name="shopType" placeholder="商品品牌"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span> 生产日期：</span></td>
                        <td><input type="date" id="shopDate" name="shopDate" placeholder="2018-07-20"></td>
                        <td><span></span></td>
                        <td><span>商品价格：</span></td>
                        <td> <input type="text" id="shopMoney" name="shopMoney" placeholder="26.5"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span>商品库存：</span></td>
                        <td><input type="number" id="shopNumber" name="shopNumber" placeholder="300"></td>
                        <td><span></span></td>
                        <td><span>已售数量：</span></td>
                        <td><input type="number" id="shopOutNumber" name="shopOutNumber" placeholder="200"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span> 商品图片：</span></td>
                        <td><img src="img/logo.png"><input type="file" id="shopImg" name="shopImg"></td>
                        <td><span></span></td>
                        <td><span>商品简介：</span></td>
                        <td><input type="text" id="shopconter" name="shopconter" placeholder="鼠标，静音，无线"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td colspan="5"></td>
                        <td ><input type="submit" value="修改商品" id="updateShops"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
