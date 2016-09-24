// JavaScript Document
function addNumber(){
	number=document.getElementById('input-detail-number').value;
	number++;
	document.getElementById('input-detail-number').value=number;
	document.getElementById('button-detail-minus').disabled=false;
}
function minusNumber(){
	number=document.getElementById('input-detail-number').value;
	if(number>=1){
		number--;
		document.getElementById('input-detail-number').value=number;
		if(number<=1){
			document.getElementById('button-detail-minus').disabled=true;
		}
	}
}
function checkNumber(){
	text=document.getElementById('input-detail-number').value;
	if(!/^\d+$/.test(text)||text=="0"){
		document.getElementById('input-detail-number').value=number;
	}else{
		number=document.getElementById('input-detail-number').value;
		if(number<=1){
			document.getElementById('button-detail-minus').disabled=true;
		}else{
			document.getElementById('button-detail-minus').disabled=false;
		}
	}
}