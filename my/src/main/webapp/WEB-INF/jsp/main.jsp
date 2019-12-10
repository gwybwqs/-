<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/2
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        个人中心
    </title>
    <link rel="stylesheet" href="/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/main.css" />
</head>
<body>

<div id="app">
    <div align="center">
        <span class="h3">欢迎你{{username}}</span><br/><br/>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">修改密码</button>
        <a type="button" class="btn btn-danger" href="/logout">退出</a>

    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="margin: 0 auto">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label  class="control-label" >旧密码:</label>
                            <input type="password" class="form-control" v-model="old_pwd">
                        </div>
                        <div class="form-group">
                            <label  class="control-label">新密码:</label>
                            <input type="password" class="form-control" v-model="password"></input>
                        </div>
                        <div class="form-group">
                            <label  class="control-label">新密码确认:</label>
                            <input type="password" class="form-control" v-model="re_new_pwd"></input>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" v-on:click="fun">确认修改</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/lib/jquery/jquery.min.js"></script>
<script src="/static/lib//bootstrap/js/bootstrap.js"></script>
<script src="/static/lib/vue/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="/static/js/main.js"></script>

</body>
</html>
