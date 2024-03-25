<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>购物车系统</title>
	<link rel="stylesheet" href="../css/index.css">
	<script src="../jq/jquery.min.js"></script>
	<script src="../jq/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript">
        $(function(){
            $("#zc").click(function(){
                $.ajax({
                    url:"http://localhost:8080/cl/zhuce",
                    data:{name:$("#name").val(),pwd:$("#pwd").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("注册成功");
                            window.location.href = "http://localhost:8080/cl/Se";                        }else if(data=="N"){
                            alert("注册失败");
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
			<a href="http://localhost:8080" id="dl">返回登录</a>
			<a href="#" style="margin-left: 100px;" id="zc">立即注册</a>
		</form>
	</div>
</main>
</body>
</html>
