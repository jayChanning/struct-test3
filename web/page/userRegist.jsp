<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 2018/12/6
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%-- 引入bootstrap样式 --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <%--<script src="../js/check.js" type="text/javascript"></script>--%>
        <script type="text/javascript">
            function doAction(value) {
                document.registForm.action = value;
                registForm.submit();
            }
        </script>
    <title>注册</title>
</head>
<body>

<form class="form-horizontal" method="post" name="registForm" action="">
    <div class="form-group">
        <label for="inputName2" class="col-xs-5 control-label">用户名</label>
        <div class="col-sm-3">
            <input name="user.userName" type="text" class="form-control" id="inputName2" placeholder="键入用户名&hellip;">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-xs-5 control-label">密码</label>
        <div class="col-sm-3">
            <input name="user.userPass" type="password" class="form-control" id="inputPassword3" placeholder="键入密码&hellip;">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3_2" class="col-xs-5 control-label">确认密码</label>
        <div class="col-sm-3">
            <input name="user.userRepeatpass" type="password" class="form-control" id="inputPassword3_2" placeholder="再次键入密码&hellip;">
        </div>
    </div>
    <div class="form-group">
        <label for="inputSelect3" class="col-xs-5 control-label">用户类型</label>
        <div class="col-sm-3">
            <select name="user.userType" class="form-control" id="inputSelect3">
                <option value="-1">请选择</option>
                <option value="普通用户">普通用户</option>
                <option value="管理员">管理员</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inputSex3" class="col-xs-5 control-label">性别</label>
        <div class="col-sm-3">
            <select name="user.userSex" class="form-control" id="inputSex3">
                <option value="-1">请选择</option>
                <option value="男">男</option>
                <option value="女">女</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inputBirth3" class="col-xs-5 control-label">出生日期</label>
        <div class="col-sm-3">
            <input name="user.userBirth" type="date" class="form-control" id="inputBirth3">
        </div>
    </div>
    <div class="form-group">
        <label for="inputTel3" class="col-xs-5 control-label">联系电话</label>
        <div class="col-sm-3">
            <input name="user.userTel" type="tel" class="form-control" id="inputTel3" placeholder="键入联系电话&hellip;">
        </div>
    </div>
    <div class="form-group">
        <label for="inputIntro3" class="col-xs-5 control-label">自我介绍</label>
        <div class="col-sm-3">
            <textarea class="form-control" rows="3" cols="37" id="inputIntro3" ></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-7 control-label">
            <button type="submit" class="btn btn-primary" onclick="doAction('user/register.do')">注册</button>
            &nbsp;&nbsp;&nbsp;
            <button type="reset" class="btn btn-default">清空</button>
        </div>
    </div>
</form>
</body>
</html>
