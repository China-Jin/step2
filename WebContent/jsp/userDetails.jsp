<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="jcp" />

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<!-- Custom styles for this template -->
<link rel="stylesheet" href="../css/dashboard.css" />
<!-- 图标 -->
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<!-- 导入公共部分的css文件 -->
<link rel="stylesheet" href="../css/common-main.css" />
<!-- 导入当前页面的css文件 -->
<link rel="stylesheet" href="../css/detail-product.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
<style type="text/css">
input{
	outline:none;
}
input:focus {  
    outline: none;  
    border-color: #cfdc00;  
    box-shadow: 0 0 5px rgba(207, 220, 0, 0.4);  
    border-radius: 5px;  
}  
</style>
<title>商品编辑页面</title>
</head>
<body>
<%@ include file="navbar-left.jsp" %>
<%@ include file="navbar-top.jsp" %>
<form action="userList.jsp">
	<div class="container-fluid">
		<div class="row">
			<!--文本主题 左侧col-md-offset-2 -> 10宽度col-md-10 -> 90-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">用户信息</h1>
				<div class="panel panel-default">
					<div class="panel-heading"> 					
						<p>
	               		  	 用户编号:<input type="text" class="form-control" disabled="disabled" name="userID" value="1001"/>
	               		</p>
	               		<p>申请贷款限额:<input type="text" class="form-control" disabled="disabled" name="maxMon" value="20000"/></p>
	                	<p> 剩余还款:<input type="text" class="form-control" disabled="disabled" name="restMon" value="3000"/></p>
	                	<p> 下次还款时间:<input type="date" class="form-control" disabled="disabled" name="nextDay" value="2016-10-01"/></p>
	                	<p> 用户状态:<input type="text" class="form-control" disabled="disabled"  name="userStyle" value="正常"/></p>
	                	<p> 用户贷款还款信息:</p><textarea class="form-control" disabled="disabled" rows="10">
2016-09-16 贷款1000元
2016-09-15 贷款1000元
2016-09-14 还款1000元
2016-09-13 贷款1000元
2016-09-12 还款3000元
2016-09-11 贷款2000元
2016-09-10 贷款1000元
</textarea>
	                	
					</div>					
					<div class="panel-body">						
							<div class="div-detail">
								<button class="btn" id="btn_product_update" type="submit"><i class=" icon-upload-alt"></i> 提交</button>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
</form>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-3.1.0.min.js"></script>
<!-- Bootstrap js插件 -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>