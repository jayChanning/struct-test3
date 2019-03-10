<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 2018/12/6
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <%--<img src="../img/Brandlogo.png" alt="Brand">--%>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">用户管理<span class="sr-only">(current)</span></a></li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <select class="form-control">
                        <option value="-1">选择查询方式</option>
                        <option value="用户名">用户名</option>
                        <option value="性别">性别</option>
                        <option value="个人介绍">个人介绍</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="输入关键字搜索&hellip;">
                </div>
                <button type="submit" class="btn btn-info">搜索</button>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">
                    添加用户
                </button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <div class="form-group">
                   <p class="navbar-text">${user.userName} </p>
                </div>

                    <a href="../index.jsp" role="button" class="btn btn-danger btn-sm">注销</a>
            </ul>
            <%--<form class="nav navbar-nav navbar-right">
                <div class="form-group">

                </div>
            </form>--%>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加用户</h4>
            </div>
            <div class="modal-body">
                <jsp:include page="userRegist.jsp" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<table class="table table-hover" border="1">
    <tr>
        <th style="border-style:none">用户名</th>
        <th style="border-style:none">用户类型</th>
        <th style="border-style:none">性&nbsp;别</th>
        <th style="border-style:none">出生日期</th>
        <th style="border-style:none">联系电话</th>
        <th style="border-style:none">自我介绍</th>
        <th style="border-style:none">操&nbsp;作</th>
    </tr>
</table>
</body>
</html>
