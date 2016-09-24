<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- navbar-left -->
	<div class="col-sm-3 col-md-2 sidebar">
		<ul class="nav nav-sidebar">
			<!--当前活动标签用class="active"表示-->
			<li id="index" <%if(request.getRequestURI().indexOf("index.jsp")!=-1){ %>class="active"<%} %>><a href="index.jsp"><i
					class=" icon-bar-chart"></i> 销售统计</a></li>
			<li id="userList"<%if(request.getRequestURI().indexOf("userList.jsp")!=-1){ %>class="active"<%} %>><a href="userList.jsp"><i
					class=" icon-search"></i> 用户查询</a></li>
			<li id="orderList"<%if(request.getRequestURI().indexOf("orderList.jsp")!=-1){ %>class="active"<%} %>><a href="orderList.jsp"><i
					class=" icon-cogs"></i> 订单管理</a></li>
			<li id="productList"<%if(request.getRequestURI().indexOf("productList.jsp")!=-1){ %>class="active"<%} %>><a href="productList.jsp"><i
					class=" icon-table"></i> 商品列表</a></li>
			<li id="productDetails"<%if(request.getRequestURI().indexOf("productDetails.jsp")!=-1){ %>class="active"<%} %>><a href="productDetails.jsp"><i
					class=" icon-wrench"></i> 商品管理</a></li>
		</ul>
	</div>
