<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>购物车系统</title>
<link rel="stylesheet" href="css/index.css">
<script src="jq/jquery.min.js"></script>
<script src="jq/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
    $(function(){
        $("#dl").click(function(){
            $.ajax({
                url:"http://localhost:8080/cl/dl",
                data:{name:$("#name").val(),pwd:$("#pwd").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("登陆成功");
                        window.location.href = "http://localhost:8080/cl/Se";
                    }else if(data=="N"){
                        alert("登录失败");
                    }

                },
                dataType:"text"
            })
        });
    })
</script>
</head>

<body>
<main>
<div class="right">
	<form action="#">
		<h3>登录入口</h3>
		<ol>
			<li>姓名：<input type="text" id="name"></li>
			<li>密码：<input type="password" id="pwd"></li>
		</ol>
		<a href="#" id="dl">立即登录</a>
		<a href="page/denglu.jsp" style="margin-left: 100px;" id="zc">立即注册</a>
	</form>
</div>
</main>
</body>
</html>
