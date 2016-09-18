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

})
function selectOption() {
  var select_1 = $("#select_1").val();
  /*判断二级选项是否存在,如果存在则返回*/
  if($("#select_2").length!=0){
    $("#select_2").remove();
  }
  var mySelect = document.createElement("select");
  mySelect.id = "select_2";
  mySelect.setAttribute("class","select");
  switch (select_1){
    case "上衣":
      $("#select_1").after(mySelect);
      for(var i=0;i<optionsOne.length;i++){
        addOption("#select_2",optionsOne[i]);
    }
      break;
    case "裤子":
      $("#select_1").after(mySelect);
      for(var i=0;i<optionsTwo.length;i++){
        addOption("#select_2",optionsTwo[i]);
      }
    case "裙子":
      $("#select_1").after(mySelect);
      for(var i=0;i<optionsThree.length;i++){
        addOption("#select_2",optionsThree[i]);
      }
    default:break;
  }
}
/*添加选项*/
function addOption(id,text){
  //根据id查找对象，
  var obj=$(id);
  //添加一个选项
  obj.get(0).options.add(new Option(text,text));
}
