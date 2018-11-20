<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/17
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品界面</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/insertShops.js"></script>
    <link rel="stylesheet" href="css/insertShops.css">
</head>
<body>
    <div id="insert">
        <form action="insertShops.jsp" method="get">
            <table>
                <tr>
                    <td width="130px"><span>商品名：</span></td>
                    <td width="150px"><input type="text" id="shopName" name="shopName" placeholder="商品名"></td>
                    <td width="300px"></td>
                    <td width="120px"><span>商品简介：</span></td>
                    <td width="150px"><input type="text" id="shopconter" name="shopconter" placeholder="商品简介"></td>
                    <td width="300px"></td>
                </tr>
                <tr>
                    <td width="130px"><span>商品价格：</span></td>
                    <td><input type="text" id="shopMoney" name="shopMoney" placeholder="商品价格"></td>
                    <td></td>
                    <td><span>商品库存：</span></td>
                    <td><input type="number" id="shopNumber" name="shopNumber" placeholder="0"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><span>商品品牌：</span></td>
                    <td><input type="text" id="shopType" name="shopType" placeholder="商品品牌"></td>
                    <td></td>
                    <td><span>商品类型：</span></td>
                    <td>
                        <select>
                            <option>请选择商品类型</option>
                            <option>电子产品</option>
                            <option>服装</option>
                            <option>手机</option>
                            <option>家电</option>
                        </select
                    ></td>
                    <td></td>
                </tr>
                <tr>
                    <td><span> 生产日期：</span></td>
                    <td><input type="date" id="shopDate" name="shopDate"></td>
                    <td></td>
                    <td><span> 商品图片：</span></td>
                    <td><input type="file" id="shopImg" name="shopImg" placeholder="选择图片"></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5"></td>
                    <td ><input type="submit" value="新增商品" id="addShops"/></td>

                </tr>
            </table>
        </form>
    </div>
</body>
</html>
