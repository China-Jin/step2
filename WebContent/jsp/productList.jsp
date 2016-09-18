<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="author" content="gx" />
<title>商品列表</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<!-- Custom styles for this template -->
<link rel="stylesheet" href="../css/dashboard.css" />
<!-- 数据表DataTables CSS -->
<link rel="stylesheet" href="../css/dataTables.css" />
<!-- 图标 -->
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<!-- 导入公共部分的css文件 -->
<link rel="stylesheet" href="../css/common-main.css" />
<!-- 导入当前页面的css文件-->
<link rel="stylesheet" href="../css/list-product.css" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navbar-top.jsp" />
	<jsp:include page="navbar-left.jsp" />
<div class="container-fluid">
	<div class="row">
		<!--文本主题 左侧col-md-offset-2 -> 10宽度col-md-10 -> 90-->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header">商品列表</h1>
			<div class="btn-toolbar" style="width: 100%;height: 50px;">
				<button type="button" id="btn_delet" class="btn" style="position: absolute;right: 50px"><i class=" icon-trash"></i> 删除选定行</button>
			</div>
			<div class="table-responsive well">
				<!--表单鼠标悬停颜色在 table-hover>tbody>tr:hover{background-color:#CFCFCF} 更改-->
				<table id="product_table" class="table table-condensed table-hover" cellspacing="0" width="100%" style="margin:auto;">
					<thead>
					<tr>
						<th></th>
						<th>商品编号</th>
						<th>商品名称</th>
						<th>商品类型(标签)</th>
						<th>商品价格</th>
						<th>商品详情</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-3.1.0.min.js"></script>
<!-- Bootstrap js插件 -->
<script src="../js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>
<!-- 图表测试数据 -->
<script src="../js/productTable.js"></script>
</body>
</html>