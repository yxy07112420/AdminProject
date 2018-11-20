<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<title>主界面</title>
		<script src="js/jquery-3.2.1.min.js" ></script>
	    <script src="js/Main.js" ></script>
	    <link rel="stylesheet" href="css/Main.css" />
	    <link rel="icon" href="img/logo.png" type="image/x-icon"/>
	</head>
	<body>
		<div id="mainAll">
	        <div id="mainAllTop">
	            <div id="mainAllTopImg">
	                <img src="img/logo.svg">
	            </div>
	            <div id="mainAllTopWec">
	                <span>欢迎admin登录</span>
	            </div>
	            <div id="mainAllTopTime">
					<span></span>
	            </div>
	            <div id="mainAllTopEsc">
						<a href="index.jsp">退出</a>
	            </div>
	        </div>
	        <div id="mianAllBottom">
	            <div id="mainAllUl">
					<ul class="uls">
						<li class="lis">
							<div class="infors">
								<span>商品信息管理</span>
							</div>
							<div class="infors_conter">
								<div><a href="selectShops.jsp" target="jumpGo">商品查询</a></div>
								<div><a href="insertShops.jsp" target="jumpGo">新增商品</a></div>
								<div><a href="updateShops.jsp" target="jumpGo">修改商品信息</a></div>
							</div>
						</li>
						<li class="lis">
							<div class="infors">
								<span>订单信息管理</span>
							</div>
							<div class="infors_conter">
								<div><a target="jumpGo">商品查询</a></div>
								<div><a target="jumpGo">新增商品</a></div>
								<div><a target="jumpGo">修改商品信息</a></div>
							</div>
						</li>
						<li class="lis">
							<div class="infors">
								<span>用户信息管理</span>
							</div>
							<div class="infors_conter">
								<div><a target="jumpGo">商品查询</a></div>
								<div><a target="jumpGo">新增商品</a></div>
								<div><a target="jumpGo">修改商品信息</a></div>
							</div>
						</li>
					</ul>
	            </div>
	            <div id="mainAllConter">
					<iframe name="jumpGo"></iframe>
	            </div>
	        </div>
    	</div>
	</body>
</html>
