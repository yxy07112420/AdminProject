<%@ page import="com.neuedu.ClassDemo.Shops" %>
<%@ page import="java.util.List" %><%--
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
            <form action="singoShopServlet" method="post">
                请输入您要选择修改的商品信息：<input type="text" id="updateConter" name="updateConter" placeholder="商品名称"/>
                <input type="submit" value="查询">
            </form>
        </div>
        <div id="update_conter">
            <form action="updateShops.jsp" method="get">
                <table>
                    <%
                        Object selectShop = request.getAttribute("selectShop");
                        if(selectShop instanceof List){
                            List<Shops> shops = (List<Shops>)selectShop;
                            for(int i = 0;i < shops.size();i++){
                    %>
                    <tr>
                        <td width="130px"><span>商品编号：</span></td>
                        <td width="150px"><input type="text" id="shopId" name="shopId" disabled="disabled" value="<%=shops.get(i).getShopId()%>"></td>
                        <td width="300px"><span></span></td>
                        <td width="130px"><span>商品名：</span></td>
                        <td width="150px"><input type="text" id="shopName" name="shopName" value="<%=shops.get(i).getShopName()%>"></td>
                        <td width="300px"><span></span></td>
                    </tr>
                    <tr>
                        <td><span>商品类型：</span></td>
                        <td>
                            <select>
                                <option><%=shops.get(i).getShopType()%></option>
                                <option value="1">计算机</option>
                                <option value="2">电子产品</option>
                                <option value="3">服装</option>
                                <option value="4">手机</option>
                                <option value="5">家电</option>
                            </select>
                        </td>
                        <td></td>
                        <td><span>商品品牌：</span></td>
                        <td><input type="text" id="shopType" name="shopType" value="<%=shops.get(i).getShopStyle()%>"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span> 生产日期：</span></td>
                        <td><input type="date" id="shopDate" name="shopDate" disabled="disabled" value="<%=shops.get(i).getShopTime()%>"></td>
                        <td><span></span></td>
                        <td><span>商品价格：</span></td>
                        <td> <input type="text" id="shopMoney" name="shopMoney" value="<%=shops.get(i).getShopMoney()%>"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span>商品库存：</span></td>
                        <td><input type="number" id="shopNumber" name="shopNumber" value="<%=shops.get(i).getShopNumber()%>"></td>
                        <td><span></span></td>
                        <td><span>已售数量：</span></td>
                        <td><input type="number" id="shopOutNumber" name="shopOutNumber" disabled="disabled" value="<%=shops.get(i).getShopSellNumber()%>"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td><span> 商品图片：</span></td>
                        <td><img src="http://localhost:8080/imgs/<%=shops.get(i).getShopImages()%>"><input type="file" id="shopImg" name="shopImg"></td>
                        <td><span></span></td>
                        <td><span>商品简介：</span></td>
                        <td><input type="text" id="shopconter" name="shopconter" value="<%=shops.get(i).getShopDescribe()%>"></td>
                        <td><span></span></td>
                    </tr>
                    <tr>
                        <td colspan="5"></td>
                        <td ><input type="submit" value="修改商品" id="updateShops"/></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
