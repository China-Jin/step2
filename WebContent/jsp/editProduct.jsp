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
<form>
	<div class="container-fluid">
		<div class="row">
			<!--文本主题 左侧col-md-offset-2 -> 10宽度col-md-10 -> 90-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">订单编号:201609010001</h1>
				<div class="panel panel-default">
					<div class="panel-heading col-md-8"> 
					<h4><strong>收货信息</strong></h4>
						<p>
	               		  	 姓  名：测试人员<br>
	                  		 收货地址：江南皮革厂<br>
	                		 联系电话：10086<br>
	                </p>
					</div>
					<div class="panel-heading col-md-4" > 
					<h4><strong>订单信息</strong></h4>
						<p >
	             		     订单状态：已付款<br>
	            		     订单时间：2016-07-22 21:33:58<br>
	            		     快递单号:(速达快递)201609011001<br/> 
	               	   </p>
					</div>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
					      <thead>
					        <tr>
					          <th>物品编号</th>
					          <th>订单时间</th>
					          <th>配送时间</th>
					          <th>订单内容</th>
					          <th>商品价格</th>
					          <th>商品数量</th>
					          <th>总价</th>
					          <th>商品当前状态</th>
					        </tr>
					      </thead>
					      <tbody>
					        <tr>
					          <td>1</td>
					          <td><label>2016-09-01 </label> </td>
					          <td><label>全天都行</label></td>
					          <td><label>htc One</label></td>
					          <td><label>￥2599.00</label></td>	
					          <td><label>1</label></td>
					          <td><label>￥2599.00</label></td>	
					          <td>
									<input type="radio" class="btn btn-default btn-xs" name="2" checked="checked">未发货
									<input type="radio" class="btn btn-default btn-xs" name="2">已发货
									<input type="radio" class="btn btn-default btn-xs" name="2">已送达
							  </td>				         		   
					        </tr>
					        <tr>
					          <td>2</td>
					          <td><label>2016-09-01 </label> </td>
					          <td><label>全天都行</label></td>
					          <td><label>华为P9</label></td>
					          <td><label>￥3599.00</label></td>
					          <td><label>1</label></td>
					          <td><label>￥3599.00</label></td>
					          <td>
									
							  </td>				
					        </tr>
					        <tr>
					          <td>3</td>
					          <td><label>2016-09-01 </label> </td>
					          <td><label>全天都行</label></td>
					          <td><label>红米pro手机</label></td>
					          <td><label>￥1500.00</label></td>	
					          <td><label>1</label></td>
					          <td><label>￥1500.00</label></td>
					          <td>							
							  </td>					
					        </tr>
					        <tr>
	           					 <td colspan="2"  class="text-left">
	            				  	<p>买家留言</p>
	          					 </td>
	            				<td  colspan="6"  class="text-left">
	              					<p>不要顺丰！</p>
	            				</td>
	          				</tr>	
	          				<tr>
	          					<td colspan="5" >
	          					</td>
	          					<td class="text-left">
	          						<p>总价</p>
	          					</td>
	          					<td class="text-left">
	          						<p>￥7698</p>
	          					</td>    
	          					<td></td>   				
	          				</tr>			        
					      </tbody>
					    </table>
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