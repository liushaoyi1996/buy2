<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="utf-8">
<title>购物车系统</title>
<link rel="stylesheet" href="http://localhost:8080/css/xy.css">
	<script src="http://localhost:8080/jq/jquery.min.js"></script>
<script>
	$(function(){
		$(".x1").click(function(){
			$(".a2").hide();
			$(".a3").hide();
			$(".a4").hide();
			$(".a5").hide();
			$(".a6").hide();
            $(".a1").show();
			$(".x2,.x3,.x4,.x5,.x6").css({background:"white"});
			$(".x1").css({background:"skyblue"});
			$(".x1").css({color:"white"});
			$(".x2,.x3,.x4,.x5,.x6").css({color:"black"});
         });
		$(".x2").click(function(){
            $(".a1").hide();
			$(".a3").hide();
			$(".a4").hide();
			$(".a5").hide();
			$(".a6").hide();
            $(".a2").show();
			$(".x1,.x3,.x4,.x5,.x6").css({background:"white"});
			$(".x2").css({background:"skyblue"});
			$(".x2").css({color:"white"});
			$(".x1,.x3,.x4,.x5,.x6").css({color:"black"});
         });
		$(".x3").click(function(){
            $(".a1").hide();
			$(".a2").hide();
			$(".a4").hide();
			$(".a5").hide();
			$(".a6").hide();
            $(".a3").show();
			$(".x1,.x2,.x4,.x5,.x6").css({background:"white"});
			$(".x3").css({background:"skyblue"});
			$(".x3").css({color:"white"});
			$(".x2,.x1,.x4,.x5,.x6").css({color:"black"});
         });
		$(".x4").click(function(){
            $(".a1").hide();
			$(".a2").hide();
			$(".a3").hide();
			$(".a5").hide();
			$(".a6").hide();
            $(".a4").show();
			$(".x4").css({background:"skyblue"});
			$(".x1,.x2,.x3,.x5,.x6").css({background:"white"});
			$(".x4").css({color:"white"});
			$(".x2,.x3,.x1,.x5,.x6").css({color:"black"});
         });
		$(".aa1").click(function(){
			window.location.href="http://localhost:8080/index.jsp";
		})
	});
    $(function(){
        $("#add").click(function(){
            $.ajax({
                url:"http://localhost:8080/cl/addsp",
                data:{name:$("#name").val(),sum:$("#sum").val(),money:$("#money").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("添加成功");
                        location.reload();
                    }else if(data=="N"){
                        alert("失败");
                    }

                },
                dataType:"text"
            })
        });
    });

    $(function(){
        $("#xg").click(function(){
            $.ajax({
                url:"http://localhost:8080/cl/upsp",
                data:{name1:$("#name1").val(),name2:$("#name2").val(),sum:$("#sum1").val(),money:$("#money1").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("修改成功");
                        location.reload();
                    }else if(data=="N"){
                        alert("修改失败")
					}

                },
                dataType:"text"
            })
        });
    });

    $(function(){
        $("#de").click(function(){
            $.ajax({
                url:"http://localhost:8080/cl/de",
                data:{name:$("#name3").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("删除成功");
                        location.reload();
                    }else if(data=="N"){
                        alert("删除失败")
                    }

                },
                dataType:"text"
            })
        });
    });


</script>
</head>

<body>
<header>
</header>
<main>
	 <aside>
	 	<dl>
	 		<dt>快捷操作</dt>
	 		<dd><a href="#" class="x1">购物车</a></dd>
	 		<dd><a href="#" class="x2">添加商品</a></dd>
			<dd><a href="#" class="x3">修改密码</a></dd>
			<dd><a href="#" class="x4">删除商品</a></dd>
	 		<dd><a href="http://localhost:8080/" class="x5">退出系统</a></dd>
	 	</dl>
	 </aside>
	 <article class="a1">
	 	<h3>购物车管理系统-购物车</h3>
		 <table>
			 <thead>
			 <tr>
				 <td>商品名称</td>
				 <td>商品数量</td>
				 <td>商品价格</td>
			 </tr>
			 </thead>
			 <tbody>
			 <c:forEach var="list" items="${list}">
				 <tr>
					 <td><c:out value="${list.name}" /></td>
					 <td><c:out value="${list.sum}" /></td>
					 <td><c:out value="${list.money}" /></td>
				 </tr>
			 </c:forEach>
			 </tbody>
		 </table>
	 </article>


	 <article class="a2">
	 	<h3>购物车管理系统-添加商品</h3>

		 <table>
			 <tr>
				 <td>商品名称</td>
				 <td><input type="text" id="name"></td>
			 </tr>

			 <tr>
				 <td>商品数量</td>
				 <td><input type="text" id="sum"></td>
			 </tr>

			 <tr>
				 <td>商品价格</td>
				 <td><input type="text" id="money"></td>
			 </tr>

		 </table>

		 <input type="submit" id="add" value="添加">
	 </article>
	<article class="a3">

		<table>
			<tr>
				<td>商品名称</td>
				<td><input type="text" id="name1"></td>
			</tr>
			<tr>
				<td>新名称</td>
				<td><input type="text" id="name2"></td>
			</tr>

			<tr>
				<td>新数量</td>
				<td><input type="text" id="sum1"></td>
			</tr>

			<tr>
				<td>新价格</td>
				<td><input type="text" id="money1"></td>
			</tr>

		</table>

		<input type="submit" id="xg" value="修改">
	</article>
	<article class="a4">

		<table>
			<tr>
				<td>商品名称</td>
				<td><input type="text" id="name3"></td>
			</tr>

		</table>

		<input type="submit" id="de" value="删除">
	</article>
	 <article class="a5">
	 	<h3>退出系统</h3>
	 	<p>正在退出...</p>
		 <input type="password" value="${ida}" style="display: none" id="ida">
	 </article>
</main>
</body>
</html>
