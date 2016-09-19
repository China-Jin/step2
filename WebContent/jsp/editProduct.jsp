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
<div class="container-fluid">
	<div class="row">
		<!--文本主题 左侧col-md-offset-2 -> 10宽度col-md-10 -> 90-->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header">商品详情</h1>
			<div class="panel panel-default">
				<div class="panel-heading">商品属性</div>
				<div class="panel-body">
					<table class="table table-hover">
				      <thead>
				        <tr>
				          <th>订单编号</th>
				          <th>订单时间</th>
				          <th>配送时间</th>
				          <th>订单内容</th>
				          <th>商品价格</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td><%=request.getParameter("orderID") %></td>
				          <td><input type="date" value="2016-09-01"/> </td>
				          <td><input type="text" value="全天都行"/></td>
				          <td><input type="text" value="htc One"/></td>
				          <td><input type="text" value="￥2599.00"/></td>				         		   
				        </tr>
				        <tr>
				          <td><%=request.getParameter("orderID") %></td>
				          <td><input type="date" value="2016-09-01"/> </td>
				          <td><input type="text" value="全天都行"/></td>
				          <td><input type="text" value="华为P9"/></td>
				          <td><input type="text" value="￥3599.00"/></td>	
				        </tr>
				        <tr>
				          <td><%=request.getParameter("orderID") %></td>
				          <td><input type="date" value="2016-09-01"/> </td>
				          <td><input type="text" value="全天都行"/></td>
				          <td><input type="text" value="红米pro手机"/></td>
				          <td><input type="text" value="￥1500.00"/></td>		
				        </tr>
				      </tbody>
				    </table>
				    <table class="table table-hover">
				      <thead>
				      	<tr>				    
				     	  <th>商品数量</th>
				          <th>收货人</th>
				          <th>收货地址</th>
				          <th>收货电话</th>
				          <th>商品当前状态</th>
				        </tr>
				       </thead>
				       <tbody>
				        <tr>
				          <td><input type="text" value="1"/></td>
				          <td><input type="text" value="江南皮革厂"/></td>
				          <td><input type="text" value="浙江温州"/></td>
				          <td><input type="text" value="10086"/></td>
				          <td>
								<input type="radio" class="btn btn-default btn-xs" name="1" checked="checked">未发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="1">已发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="1">已送达</button>
						  </td>						        
				        </tr>
				         <tr>
				          <td><input type="text" value="1"/></td>
				          <td><input type="text" value="江南皮革厂"/></td>
				          <td><input type="text" value="浙江温州"/></td>
				          <td><input type="text" value="10086"/></td>
				          <td>
								<input type="radio" class="btn btn-default btn-xs" name="2" checked="checked">未发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="2">已发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="2">已送达</button>
						  </td>						        
				        </tr>
				         <tr>
				          <td><input type="text" value="1"/></td>
				          <td><input type="text" value="江南皮革厂"/></td>
				          <td><input type="text" value="浙江温州"/></td>
				          <td><input type="text" value="10086"/></td>
				          <td>
								<input type="radio" class="btn btn-default btn-xs" name="3" checked="checked">未发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="3">已发货</button>
								<input type="radio" class="btn btn-default btn-xs" name="3">已送达</button>
						  </td>						        
				        </tr>
				       </tbody>
					</table>
						<div class="div-detail">
							<button class="btn" id="btn_product_update" type="submit"><i class=" icon-upload-alt"></i> 提交</button>
						</div>
					</form>
				</div>
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
</body>
</html>