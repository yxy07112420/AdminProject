<%@ page import="java.util.List" %>
<%@ page import="com.neuedu.ClassDemo.Shops" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<title>商品信息查询</title>
		<link rel="stylesheet" href="css/selectShops.css" />
		<script src="js/jquery-3.2.1.min.js" ></script>
		<script src="js/selectShops.js" ></script>
	</head>
	<body>
		<table width="1000px">
			<tr>
				<th>商品编号</th>
				<th>商品名称</th>
				<th>商品类型</th>
				<th>商品品牌</th>
				<th>生产日期</th>
				<th>销售价格</th>
				<th>商品库存</th>
				<th>已售数量</th>
				<th>商品图片</th>
				<th>商品描述</th>
				<th>修改日期</th>
				<th>相关操作</th>
			</tr>
			<%
                Object selectShops = request.getAttribute("selectShops");
                if(selectShops instanceof List){
                    List<Shops> shops = (List<Shops>)selectShops;
                    for (Shops shop: shops) {
                        System.out.println("商品的详细信息："+shop);
            %>
                    <tr>
                        <td><%=shop.getShopId()%></td>
                        <td><%=shop.getShopName()%></td>
                        <td><%=shop.getShopStyle()%></td>
                        <td><%=shop.getShopType()%></td>
                        <td class="times"><%=shop.getShopTime()%></td>
                        <td><%=shop.getShopMoney()%></td>
                        <td><%=shop.getShopNumber()%></td>
                        <td><%=shop.getShopSellNumber()%></td>
                        <td><img src="http://localhost:8080/imgs/<%=shop.getShopImages()%>" class="shopImg"></td>
                        <td><%=shop.getShopDescribe()%></td>
                        <td class="times"><%=shop.getShopCheckTime()%></td>
                        <td class="imgs">
                            <a href="singoShopServlet?updateConter=<%=shop.getShopId()%>"><img src="img/wirte.svg" title="修改" class="update"/></a>
                            <a href="DeleteShopsServlet?deleteConter=<%=shop.getShopId()%>"><img src="img/delete.svg" title="删除" class="delete"/></a>
                        </td>
                    </tr>
            <%
                    }
                }
            %>
		</table>
	</body>
</html>
