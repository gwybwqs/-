<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css" />
</head>
<body>

<div class="login container">
    <div class="panel panel-default"  style="width: 400px">
        <div class="panel-heading">
            <h3 class="panel-title">登录</h3>
        </div>
        <div class="panel-body" id="app">
            <form id="login-form">
                <div class="form-group">
                    <label>用户名：</label>
                    <input type="text" class="form-control" v-model="id" placeholder="请输入账号">
                </div>
                <div class="form-group">
                    <label>密码：</label>
                    <input type="password" class="form-control" v-model="password" placeholder="请输入密码">
                </div>

                <button id="login-submit" type="button" class="btn btn-success"  v-on:click="fun">登录</button>
                <button type="reset" class="btn btn-info">重置</button>
            </form>
        </div>
    </div>
</div>



<script src="/static/lib/jquery/jquery.min.js"></script>
<script src="/static/lib//bootstrap/js/bootstrap.js"></script>
<script src="/static/lib/vue/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="static/js/login.js"></script>
</body>
</html>
