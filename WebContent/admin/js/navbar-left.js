/**
 * 根据网页判断当前的活动标签
 * Created by xiwenlejian on 2016/9/15.
 */
$(document).ready(function() {
	
	if (uri.indexOf("userList.jsp")>= 0) 
	{
		$("#userList").addClass("active");
	} 
	else if (uri.indexOf("orderList.jsp")>= 0)
	{
		$("#orderList").addClass("active");
	} 
	else if (uri.indexOf("productList.jsp")>= 0) 
	{
		$("#productList").addClass("active");
	} 
	else if (uri.indexOf("productDetails.jsp")>= 0)
	{
		$("#productDetails").addClass("active");
	}else{
		$("#index").addClass("active");
	}
})

