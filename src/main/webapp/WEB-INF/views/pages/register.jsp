<%--
  Created by IntelliJ IDEA.
  User: Novemser
  Date: 2016/12/2
  Time: 0:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Login & Register</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/style/register-login.css"/>">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
    <div class="cent-box-header">
        <h1 class="main-title hide">约车</h1>
        <h2 class="sub-title">世界上没有约不到的车</h2>
    </div>

    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="login" >登录</a>
                <a href="register" class="active">注册</a>
                <div class="slide-bar slide-bar1"></div>
            </div>
        </div>

        <div class="login form">
            <div class="group">
                <div class="group-ipt student_id">
                    <input type="number" name="student_id" id="student_id" class="ipt" placeholder="请输入你的学号" required>
                </div>
                <div class="group-ipt user">
                    <input type="text" name="user" id="user" class="ipt" placeholder="起一个用户名" required>
                </div>
                <div class="group-ipt password">
                    <input type="password" name="password" id="password" class="ipt" placeholder="请输入校园卡密码" required>
                </div>
                <div class="group-ipt password1">
                    <input type="password" name="password1" id="password1" class="ipt" placeholder="重复密码" required>
                </div>
                <div class="group-ipt verify">
                    <input type="text" name="verify" id="verify" class="ipt" placeholder="输入验证码" required>
                    <img src="http://zrong.me/home/index/imgcode?id=" class="imgcode">
                </div>
            </div>
        </div>

        <div class="button">
            <button type="submit" class="login-btn register-btn" id="button">注册</button>
        </div>
    </div>
</div>

<div class="footer">
    <p>约车 - 世界上没有约不到的车</p>
    <p>Designed By TJ SSE Carpool 2016</p>
</div>

<script src='<c:url value="/static/js/particles.js"/>' type="text/javascript"></script>
<script src='<c:url value="/static/js/background.js"/>' type="text/javascript"></script>
<script src='<c:url value="/static/js/jquery_login.min.js"/>' type="text/javascript"></script>
<script src='<c:url value="/static/js/layer/layer.js"/>' type="text/javascript"></script>
<script src='<c:url value="/static/js/index.js"/>' type="text/javascript"></script>
<script>
    $('.imgcode').hover(function(){
        layer.tips("看不清？点击更换", '.verify', {
            time: 6000,
            tips: [2, "#3c3c3c"]
        })
    },function(){
        layer.closeAll('tips');
    }).click(function(){
        $(this).attr('src','http://zrong.me/home/index/imgcode?id=' + Math.random());
    })

    $(".login-btn").click(function(){
        var email = $("#email").val();
        var password = $("#password").val();
        var verify = $("#verify").val();
        // $.ajax({
        // url: 'http://www.zrong.me/home/index/userLogin',
        // type: 'post',
        // jsonp: 'jsonpcallback',
        //       jsonpCallback: "flightHandler",
        // async: false,
        // data: {
        // 	'email':email,
        // 	'password':password,
        // 	'verify':verify
        // },
        // success: function(data){
        // 	info = data.status;
        // 	layer.msg(info);
        // }
        // })

    })
    $("#remember-me").click(function(){
        var n = document.getElementById("remember-me").checked;
        if(n){
            $(".zt").show();
        }else{
            $(".zt").hide();
        }
    })
</script>
</body>
</html>
