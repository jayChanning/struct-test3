<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 2018/12/7
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录</title>
  <%-- 引入bootstrap样式 --%>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
  <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    function doAction(value) {
      document.userForm.action = value;
      userForm.submit();
    }
  </script>
</head>
<body>
<div class="jumbotron">
  <div class="container">
    <h1>欢迎！</h1>
    <p> 请先登录...</p>
  </div>
</div>
<div >
  <form class="form-horizontal" name="userForm" action="" method="post">
    <div class="form-group">
      <label for="inputName3" class="col-xs-5 control-label">用户名</label>
      <div class="col-sm-3">
        <input name="user.userName" type="text" class="form-control" id="inputName3" placeholder="键入用户名&hellip;">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword3" class="col-xs-5 control-label">密  码</label>
      <div class="col-sm-3">
        <input name="user.userPass" type="password" class="form-control" id="inputPassword3" placeholder="键入密码&hellip;">
      </div>
    </div>
    <div class="form-group">
      <label for="inputSelect3" class="col-xs-5 control-label">用户类型</label>
      <div class="col-sm-2">
        <select name="user.userType" class="form-control" id="inputSelect3">
          <option value="-1">请选择</option>
          <option value="普通用户">普通用户</option>
          <option value="管理员">管理员</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <div class="col-xs-7 control-label">
        <input class="btn btn-primary" type="submit" value="登录" onclick="doAction('user/login.do');">&nbsp;&nbsp;
        <%--<input class="btn btn-default" type="submit" value="注册" onclick="doAction('user/regist.do');">--%>
        <a href="page/userRegist.jsp" role="button" class="btn btn-default">注册</a>
      </div>
    </div>
  </form>
</div>
</body>
</html>
