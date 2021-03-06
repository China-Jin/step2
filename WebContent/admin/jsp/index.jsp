<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="author" content="jcp" />
<title>销售统计页面</title>
 <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css" />
  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="../css/dashboard.css" />
  <!-- 图标 -->
  <link rel="stylesheet" href="../css/font-awesome.min.css" />
  <!-- 导入公共部分的css文件 -->
  <link rel="stylesheet" href="../css/common-main.css" />
  <!-- 导入日历选择器 -->
  <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css" />
  <!-- 导入当前页面的css文件 -->
  <link rel="stylesheet" href="../css/index.css" />
<title>销售统计页面</title>
</head>
<body>
	<%@ include file="navbar-top.jsp"%>
	<%@ include file="navbar-left.jsp"%>
	<%-- <%@ include file="../back-html/main.html" %> --%>
	<%-- <jsp:include page="navbar-top.jsp"/>
<jsp:include page="navbar-left.jsp"/>
<jsp:include page="../back-html/main.html"/> --%>
<div class="container-fluid">
  <div class="row">
    <!--导航条宽度通过 col-md-2 调整为10-->
    <!--文本主题 左侧col-md-offset-2 -> 10宽度col-md-10 -> 90-->
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <h1 class="page-header">销售统计</h1>
      <!-- Chart图表显示 -->
      <div id="div_char_1" class="div-chart well">
        <canvas id="bar_chart" width="400px" height="400px"></canvas>
      </div>
      <div id="div_char_2" class="div-chart well">
        <canvas id="pie_chart" width="400px" height="400px"></canvas>
      </div>
      <div id="div_char_3" class="div-chart well">
        <canvas id="line_chart" width="400px" height="400px"></canvas>
      </div>
      <div class="div-progress-table well">
        <ul class="list-unstyled">
          <h2 class="title">部分销售进度进度</h2>
          <li>
            <span class="span-progress">HTC one</span>
            <div class="progress">
              <div class="progress-bar progress-bar-success progress-bar-striped active" style="width: 40%">
                40%
              </div>
            </div>
          </li>
          <li class="divider"></li>
          <li>
            <span class="span-progress">红米pro</span>
            <div class="progress">
              <div class="progress-bar progress-bar-info progress-bar-striped active" style="width: 20%">
                20%
              </div>
            </div>
          </li>
          <li class="divider"></li>
          <li>
            <span class="span-progress">华为P9</span>
            <div class="progress">
              <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 60%">
                60%
              </div>
            </div>
          </li>
          <li class="divider"></li>
          <li>
            <span class="span-progress">其他</span>
            <div class="progress">
              <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width: 80%">
                80% Complete (danger)
              </div>
            </div>
          </li>
        </ul>
      </div>
       <div class="div-date well">
        <div id="date_time"></div>
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
<script src="../js/navbar-left.js"></script>
<!-- 导入日历插件 -->
<script src="../js/bootstrap-datetimepicker.js"></script>
<!-- 导入Chart图表 -->
<script src="../js/Chart.min.js"></script>
<!-- 图表测试数据 -->
<script src="../js/chartTest.js"></script>
<!-- 日历数据 -->
<script src="../js/dateTime.js"></script>
<!--图表测试数据-->
<!--<script src="../js/chartTest.js"></script>-->
</body>
</html>