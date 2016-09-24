/**
 * Created by xiwenlejian on 2016/9/15.
 */
var optionsOne = [
"新品",
"衬衫",
"针织衫",
"卫衣",
"时尚套装",
"棒球外套",
"风衣",
"牛仔外套",
"皮衣",
"薄外套",
"开衫",
"马甲",
"毛呢外套",
"毛衣",
"T恤",
"雪纺衫",
"蕾丝衫",
"背心吊带",
"娃娃衫",
"针织薄衫",
"情侣装",
"短款上衣",
"喇叭袖",
"纯白衬衫",
"纯色T恤",
"一字领",
"时尚挂脖",
"绑带衬衫",
"甜美荷叶边",
"前短后长",
]
var optionsTwo =[
"牛仔裤",
"打底裤",
"阔腿裤",
"衣裤套装",
"连体裤",
"牛仔短裤",
"休闲裤",
"高腰裤",
"小脚裤",
"背带裤",
"哈伦裤",
"喇叭裤",
"破洞牛仔",
"磨边牛仔",
"雪纺裤",
"裙裤",
"五分裤",
"九分裤",
"七分裤",
"短裤",
"西装裤",
"直筒裤",
"灯笼裤",
"棉麻裤",
]
var optionsThree = [
"连衣裙",
"半身裙",
"针织裙",
"中袖连衣裙",
"卫衣裙",
"衬衫裙",
"百褶裙",
"背带裙",
"牛仔裙",
"长袖连衣裙",
"复古连衣裙",
"韩范美裙",
"雪纺裙",
"T恤裙",
"裙子套装",
"包臀裙",
"长裙",
"背心裙",
"牛仔半身裙",
"小黑裙",
"吊带裙",
"荷叶边美裙",
"小白裙",
"碎花裙",
"不规则美裙",
"一字领美裙",
"开叉裙",
"蕾丝裙",

]
$(document).ready(function () {
  /*实例化编辑器*/
  var ue = UE.getEditor('container');

  $("#select_1").on("change",function(){
  	if($(this).val() == "华为"){
  		$("#select_2").find("option").remove();
  		$("#select_2").append("<option value='P9系列'>P9系列</option>");
  		$("#select_2").append("<option value='Mate 8系列'>Mate 8系列 </option>");
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='EVA-AL00/标准版/全网通'>EVA-AL00/标准版/全网通</option>");
  		$("#select_3").append("<option value='EVA-AL10/高配版/全网通'>EVA-AL10/高配版/全网通</option>");
  	}
  	else if($(this).val()=="三星"){
  		$("#select_2").find("option").remove();
  		$("#select_2").append("<option value='GALAXY Note 7系列'>GALAXY Note 7系列</option>");
  		$("#select_2").append("<option value='GALAXY S7系列'>GALAXY S7系列</option>");
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='三星1'>三星1</option>");
  		$("#select_3").append("<option value='三星2'>三星2</option>");
  	}else if($(this).val()=="魅族"){
  		$("#select_2").find("option").remove();
  		$("#select_2").append("<option value='魅族1'>魅族1</option>");
  		$("#select_2").append("<option value='魅族2'>魅族2</option>");
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='魅族11'>魅族11</option>");
  		$("#select_3").append("<option value='魅族12'>魅族12</option>");
  	}else if($(this).val()=="小米"){
  		$("#select_2").find("option").remove();
  		$("#select_2").append("<option value='小米1'>小米1</option>");
  		$("#select_2").append("<option value='小米2'>小米2</option>");
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='小米11'>小米11</option>");
  		$("#select_3").append("<option value='小米12'>小米12</option>");
  	}else if($(this).val()=="HTC"){
  		$("#select_2").find("option").remove();
  		$("#select_2").append("<option value='HTC1'>HTC1</option>");
  		$("#select_2").append("<option value='HTC2'>HTC2</option>");
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='HTC11'>HTC11</option>");
  		$("#select_3").append("<option value='HTC12'>HTC12</option>");
  	}		
  })
  $("#select_2").on("change",function(){
  	if($(this).val()=="P9系列"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='EVA-AL00/标准版/全网通'>EVA-AL00/标准版/全网通</option>");
  		$("#select_3").append("<option value='EVA-AL10/高配版/全网通'>EVA-AL10/高配版/全网通</option>");
  	}else if($(this).val()=="Mate 8系列"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='NXT-AL10/3GB RAM/全网通'>NXT-AL10/3GB RAM/全网通</option>");
  		$("#select_3").append("<option value='NXT-AL10/4GB RAM/全网通'>NXT-AL10/4GB RAM/全网通</option>");
  	}else if($(this).val()=="GALAXY Note 7系列"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='三星1'>三星1</option>");
  		$("#select_3").append("<option value='三星2'>三星2</option>");
  	}else if($(this).val()=="GALAXY S7系列"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='三星3'>三星3</option>");
  		$("#select_3").append("<option value='三星4'>三星4</option>");
  	}else if($(this).val()=="魅族1"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='魅族11'>魅族12</option>");
  		$("#select_3").append("<option value='魅族12'>魅族12</option>");
  	}else if($(this).val()=="魅族2"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='魅族21'>魅族21</option>");
  		$("#select_3").append("<option value='魅族22'>魅族22</option>");
  	}else if($(this).val()=="小米1"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='小米11'>小米11</option>");
  		$("#select_3").append("<option value='小米12'>小米12</option>");
  	}else if($(this).val()=="小米2"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='小米21'>小米21</option>");
  		$("#select_3").append("<option value='小米22'>小米22</option>");
  	}else if($(this).val()=="HTC1"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='HTC11'>HTC11</option>");
  		$("#select_3").append("<option value='HTC12'>HTC12</option>");
  	}else if($(this).val()=="HTC2"){
  		$("#select_3").find("option").remove();
  		$("#select_3").append("<option value='HTC21'>HTC21</option>");
  		$("#select_3").append("<option value='HTC22'>HTC22</option>");
  	}
  })
})




