$(document).ready(function(e) {
	$(".daoying_img").hide();
	var i="";
    if($("title").html()=="��ҳ"){i="#first";}
	if($("title").html()=="ʵ���Ҹſ�"){i="#second";}
	if($("title").html()=="ʵ���ҳ�Ա"){i="#third";}
	if($("title").html()=="����"){i="#four";}
	if($("title").html()=="ȫ�ļ���"){i="#five";}
	if($("title").html()=="������̳"){i="#six";}
	$("#navigation "+i).css({"font-size":"24px"});
	$("#navigation "+i).find(".daoying_img").show();
	$("#navigation li").hover(function(e) {
		$("#navigation"+i).css({"font-size":"24px"});
	   $("#navigation"+i).find(".daoying_img").show();
   		$(this).css({"font-size":"24px"	});
		$(this).find(".daoying_img").show();
	}); 
	$("#navigation li").mouseleave(function(e) {
		if(!(this.id==i))//��ȡid
		{
   	  	  $(this).css({"font-size":"18px"});
			$(this).find(".daoying_img").hide();
			$("#navigation "+i).css({"font-size":"24px"});
			$("#navigation "+i).find(".daoying_img").show();
		}
    });	
	
});