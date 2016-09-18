// JavaScript Document
function clearName(id,obj){
  var pattern=/[\u4e00-\u9fa5a-zA-Z0-9—\-]{4,20}/g;
  var result=pattern.test(obj.value);
  if(result==false&&obj.value.length!=0){
	document.getElementById(id).innerHTML="填写格式不正确，请看具体填写要求";
  }else{
	 document.getElementById(id).innerHTML="";
	   }
}
function clearPassword(id,obj){
  var pattern=/(?!^[0-9]+$)(?!^[A-z]+$)(?!^[^A-z0-9]+$)^.{6,20}$/g;
  var result=pattern.test(obj.value);
  if(result==false&&obj.value.length!=0){
	document.getElementById(id).innerHTML="填写格式不正确，请看具体填写要求";
  }else{
	document.getElementById(id).innerHTML="";
	   }
}
function clearPassword2(id,obj,obj2){
  if(obj.value==obj2.value){
	document.getElementById(id).innerHTML="";	
  }else{
	document.getElementById(id).innerHTML="两次密码填写不一致";
	   }
}
function clearMailbox(id,obj){
  var pattern=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/g;
  var result=pattern.test(obj.value);
  if(result==false&&obj.value.length!=0){
	document.getElementById(id).innerHTML="填写格式不正确";
  }else{
	 document.getElementById(id).innerHTML="";
	   }
}
function spanName(id){
  document.getElementById(id).innerHTML="支持中文、字母、数字、“-”“_”的组合，4-20个字符";
}
function spanPassword(id){
  document.getElementById(id).innerHTML="建议使用字母、数字和符号两种及以上的组合，6-20个字符";
}
function spanPassword2(id){
  document.getElementById(id).innerHTML="请再次输入密码";
}
function spanMailbox(id){
  document.getElementById(id).innerHTML="完成验证后，你可以用该邮箱登录和找回密码";
}
function clock(obj){
  //对60-1，一直到等于0。按钮才亮，上面的文本变成"重新发送"
  if(t==0){
  obj.removeAttribute("disabled");
  obj.setAttribute("value","获取验证码");
  t=60;
  }else{	
  t--;
  obj.setAttribute("disabled",true);	
  document.getElementById("button").value="重新获取"+t;
  //setInterval( function() { clock(obj) },1000);
  setTimeout(function() { clock(obj) }, 1000) 
      }
}
function regButton1(obj,obj1,obj2,obj3,obj4,obj5){
	if(obj.value.length==0){
	 document.getElementById("span_reg_name").innerHTML="用户名不能为空";	
	}
	if(obj1.value.length==0){
	 document.getElementById("span_reg_password").innerHTML="密码不能为空";	
	}
	if(obj2.value.length==0){
	 document.getElementById("span_reg_password2").innerHTML="请确认密码";	
	}
	if(obj3.value.length==0){
	 document.getElementById("span_reg_mailbox").innerHTML="邮箱不能为空";	
	}
	if(obj4.value.length==0){
	 document.getElementById("span_mailword").innerHTML="验证码不能为空";	
	}
	if(!obj5.checked){
	 document.getElementById("span_checkbox").innerHTML="请阅读并同意用户协议";	
	}else{
     document.getElementById("span_checkbox").innerHTML="";	
		}
	if(obj.value.length!=0&&obj1.value.length!=0&&obj2.value.length!=0&&obj3.value.length!=0&&obj4.value.length!=0&&obj5.checked){//判断是否已经注册过和验证码是否填写正确
	 //document.getElementById('button_reg').setAttribute('type','submit');
	 window.location.assign("../xiangmu2/regsuccess.html")
	}
}
//邮箱发送验证码
function Verification1(obj){
var nodemailer = require("nodemailer");

// 开启一个 SMTP 连接池
var smtpTransport = nodemailer.createTransport("SMTP",{
  host: "smtp.qq.com", // 主机
  secureConnection: true, // 使用 SSL
  port: 465, // SMTP 端口
  auth: {
    user: "875028549@qq.com", // 账号
    pass: "jwmlgxlrsgfmbbjf" // 密码授权码
  }
});

// 设置邮件内容
var mailOptions = {
  from: "Fred Foo <875028549@qq.com>", // 发件地址
  to: obj.value, // 收件列表
  subject: "京东验证码", // 标题
  html: "<b>thanks a for visiting!</b> 世界，你好！" // html 内容
}

// 发送邮件
smtpTransport.sendMail(mailOptions, function(error, response){
  if(error){
    console.log(error);
  }else{
    console.log("Message sent: " + response.message);
  }
  smtpTransport.close(); // 如果没用，关闭连接池
});
}
