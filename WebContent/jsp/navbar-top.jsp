<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- navbar-top -->
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			<a class="navbar-brand" href="#">后台管理页面</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav nav-pills navbar-nav navbar-right">
				<li><a href="#">Dashboard</a></li>
				<li><a href="#">Settings</a></li>
				<li><a href="#">Profile</a></li>
				<!--给用户名添加下划线(表示超链接)-->
				<li role="presentation" class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <u>当前管理员</u> <i class=" icon-caret-down"></i> </a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class=" icon-cog"></i> 设置</a></li>
						<li><a href="#"><i class=" icon-envelope"> 信息</i><span class="badge span-right">14</span></a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#"><i class=" icon-signout"></i>退出</a></li>
					</ul>
				</li>
				<li><a href="#">Help</a></li>
			</ul>
		</div>
	</div>
</nav>
