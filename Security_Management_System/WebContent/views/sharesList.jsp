<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻</title>
<link href="css/search_style.css" rel="stylesheet" type="text/css" />
<link href="css/navigation.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<style>
table {
	border-collapse: separate;
	border-spacing: 10px; . tabledate { <!-- --table样式- --> border : 1px
	solid black;
	width: 100%;
	border-collapse: collapse;
}

.tddata {<!---td样式---- > border:1pxsolidblack;
	
}
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type : "post",
		url : "getAllShares",
		dataType : "json",
		data : {"type":null,"queryStr":null},
		success : function(data){
			var result = JSON.parse(data.result);
			for(var i=0;i<result.length;i++){
				var li = "<tr><td>"+result[i].number+"</td><td>"+result[i].name+"</td><td>"+result[i].category+"</td><td>"+result[i].module+"</td><td>"+result[i].service+"</td><td>"
				+result[i].subService+"</td><td>"+result[i].coreProduct+"</td><td>"+result[i].positiveFactors+"</td><td>"+result[i].nagetiveFactors+"</td><td>"+result[i].positiveMonth+"</td><td><a href='shares.jsp?id="+result[i].id+"'>查看</a></td></tr>";
				$('#shares').append(li);
			}
		}
	});
	$('#submit').click(
			function () {
				var search = $('#search').val();
				var type = $("#type option:selected").val();
				if (search == null) {
					alert('输入错误');
				} else {
					$.ajax({
						type : "post",
						url : "getAllShares",
						dataType : "json",
						data : {
							"queryStr" : search,"type":type
						},
						success : function(data) {
							$("#shares").empty();
							var result = JSON.parse(data.result);
							for(var i=0;i<result.length;i++){
								var li = "<tr><td>"+result[i].number+"</td><td>"+result[i].name+"</td><td>"+result[i].category+"</td><td>"+result[i].module+"</td><td>"+result[i].service+"</td><td>"
								+result[i].subService+"</td><td>"+result[i].coreProduct+"</td><td>"+result[i].positiveFactors+"</td><td>"+result[i].nagetiveFactors+"</td><td>"+result[i].positiveMonth+"</td><td><a href='shares.jsp?id="+result[i].id+"'>查看</a></td></tr>";
								$('#shares').append(li);
							}
						}
					});
				}
			});
});
</script>
</head>
<body>
	<div id="main">
		<div id="header">
			<p id="reg">
				<a href="login.jsp">注销</a> <a href="#">加入我们</a>
			</p>
			<div id="gradient"></div>
		</div>
		<!--end of header-->
		<div id="navigation">
			<ul>
				<li id="first"><a href="index.html">首页<img
						class="daoying_img" src="img/daoying1.png" /></a></li>
				<li id="second"><a href="search.jsp">股票信息查询<img
						class="daoying_img" src="img/daoying2.png" /></a></li>
				<li id="third"><a href="sharesList.jsp">股票信息列表<img
						class="daoying_img" src="img/daoying3.png" /></a></li>
				<!--下拉菜单-->
				<li id="four"><a href="collectionList.jsp">我的收藏<img
						class="daoying_img" src="img/daoying4.png" /></a></li>
			</ul>
		</div>
		<div id="body1">
			<div id="part1">
				<div id="top">
				<table width="800" height="38" background=" #72BBFD">
						<tr>
							<td width="30" height="32"><input id="submit" type='image'
								src='img/find.png' height="30px" width="30px" /></td>
							<td  width="30" height="32">
								<select name="type" id="type">
										<option value="number">股票代码</option>
										<option value="name">股票名称</option>
										<option value="category">所属行业</option>
										<option value="module">所属模块</option>
										<option value="service">主要业务</option>
										<option value="subService">副业务</option>
										<option value="coreProduct">核心产品</option>
										<option value="positiveFactors">利好因素</option>
										<option value="nagetiveFactors">利空因素</option>
										<option value="positiveMonth">利好月份</option>
								</select>
							</td>
							<td width="758"><input id="search" name='search' type='text'
								value="" /></td>
						</tr>
					</table>
				</div>
				<div id="cont">
					<h2>股票列表</h2>
					<table id="shares">
						<tr>
							<th>股票代号&nbsp;&nbsp;</th>
							<th>股票名称&nbsp;&nbsp;</th>
							<th>所属行业&nbsp;&nbsp;</th>
							<th>所属模块&nbsp;&nbsp;</th>
							<th>主要业务&nbsp;&nbsp;</th>
							<th>副业务&nbsp;&nbsp;</th>
							<th>核心产品&nbsp;&nbsp;</th>
							<th>利好因素&nbsp;&nbsp;</th>
							<th>利空因素&nbsp;&nbsp;</th>
							<th>利好月份&nbsp;&nbsp;</th>
							<th>查看详情&nbsp;&nbsp;</th>
						</tr>
					</table>
				</div>
				<!--end of cont-->
			</div>
			<!--end of part 1-->
			<div id="img"></div>

		</div>
		<!--end of body-->
		<div id="footer">
			<p class="footer">版权所有：大连理工大学软件学院白晨阳</p>
		</div>
		<!--end of footer-->
	</div>
	<!--end of main-->
	<script src="js/jquery.min.js"></script>
	<script src="js/navigation.js"></script>
</body>
</html>