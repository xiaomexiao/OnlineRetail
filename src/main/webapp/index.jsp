<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/ace.min.css">
<link rel="stylesheet" href="css/ace-skins.min.css">
<link rel="stylesheet" href="css/ace-responsive.min.css">

<style>
    #sidebar {
        left: 0;
        margin-top: 0;
    }

    body, html {
        width: 100%;
        height: 100%;
    }

    .blue {
        color: blue;
    }

</style>

<body>
<div class="navbar navbar-inverse">
    <div class="navbar-inner" style="background:#0099CC;">
        <div class="container-fluid">
            <a class="brand">
                <small><i class="icon-leaf"></i> gmcbrand</small>
            </a>

            <ul class="nav ace-nav pull-right">

                <li class="light-blue user-profile">
                    <a class="user-menu dropdown-toggle" href="javascript:;" data-toggle="dropdown">
                        <img alt="LRJ" src="image/avatar.jpg" class="nav-user-photo">
                        <span id="user_info"><small>Welcome</small> gmcbrand</span>
                        <i class="icon-caret-down"></i>
                    </a>
                    <ul id="user_menu" class="pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">


                        <li><a href="logout"><i class="icon-off"></i> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="sidebar">
    <div id="sidebar-shortcuts">

        <div id="sidebar-shortcuts-large">

            <button class="btn btn-small btn-success"><i class="icon-signal"></i></button>

            <button class="btn btn-small btn-info"><i class="icon-pencil"></i></button>

            <button class="btn btn-small btn-warning"><i class="icon-group"></i></button>

            <button class="btn btn-small btn-danger"><i class="icon-cogs"></i></button>

        </div>

        <div id="sidebar-shortcuts-mini">

            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>

        </div>

    </div><!-- #sidebar-shortcuts -->


    <ul class="nav nav-list">


        <li>

            <a href="/BrandInfo/toAddbrand" target="menuFrame">

                <i class="icon-dashboard"></i>

                <span>品牌商-我的信息</span>


            </a>

        </li>


        <li>

            <a href="brand-productInput-attr.html" target="menuFrame">

                <i class="icon-text-width"></i>

                <span>品牌商-商品录入</span>


            </a>

        </li>
        <li>

            <a href="brand-productInput-pic.html" target="menuFrame">

                <i class="icon-text-width"></i>

                <span>品牌商-商品主图</span>


            </a>

        </li>


        <li>

            <a href="/BrandOrders/list" class="dropdown-toggle" target="menuFrame">

                <i class="icon-file"></i>

                <span>品牌商-订单管理</span>


            </a>

        </li>


        <li>

            <a href="brand-wallerAcountRegister.html" class="dropdown-toggle" target="menuFrame">

                <i class="icon-desktop"></i>

                <span>品牌商-钱包</span>
            </a>


        </li>


        <li>

            <a href="bvo-myInfo.html" target="menuFrame">

                <i class="icon-list"></i>

                <span>借卖方-我的信息</span>


            </a>

        </li>


        <li>

            <a href="bvo-goodsstoreAdd.html" class="dropdown-toggle" target="menuFrame">

                <i class="icon-edit"></i>

                <span>借卖方-店铺管理</span>
            </a>


        </li>


        <li>

            <a href="bvo-index.html" target="menuFrame">

                <i class="icon-list-alt"></i>

                <span>借卖方-商品浏览</span>


            </a>

        </li>


        <li>

            <a href="bvo-wishlist.html" target="menuFrame">

                <i class="icon-list-alt"></i>

                <span>借卖方-心愿单</span>


            </a>

        </li>


        <li>

            <a href="bvo-orderlist.html" target="menuFrame">

                <i class="icon-calendar"></i>

                <span>借卖方-订单管理</span>


            </a>

        </li>
        <li>

            <a href="bvo-gmcwallerAcount.html" target="menuFrame">

                <i class="icon-calendar"></i>

                <span>借卖方-我的钱包</span>


            </a>

        </li>


        <li>

            <a href="code.html" target="menuFrame">

                <i class="icon-picture"></i>

                <span>数据字典管理</span>


            </a>

        </li>


        <li>

            <a href="parameter.html" target="menuFrame">

                <i class="icon-th"></i>

                <span>参数管理</span>


            </a>

        </li>

        <li>

            <a href="admin-withdraw-audit.html" target="menuFrame">

                <i class="icon-th"></i>

                <span>admin-充值提现审核</span>

            </a>

        </li>
    </ul><!--/.nav-list-->


    <div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>
</div>
<iframe id="menuFrame" name="menuFrame" src="brand-addbrand.jsp" frameborder="no" width="100%" height="100%">
</iframe>
</body>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $('.nav-list li ').click(function () {
        $(this).addClass('blue').siblings().removeClass('blue');
    })
</script>
</html>