<%@page contentType="text/html; charset=utf-8" %>
<!-- Main Sidebar -->
<div id="sidebar">
    <!-- Sidebar Brand -->
    <div id="sidebar-brand" class="themed-background text-center">
        <a href="admin" class="sidebar-title">
            <img src="/admin/img/logo.png" width="25%">
            <strong>比特糖果</strong>
        </a>
    </div>
    <!-- END Sidebar Brand -->

    <!-- Wrapper for scrolling functionality -->
    <div id="sidebar-scroll">
        <!-- Sidebar Content -->
        <div class="sidebar-content">
            <!-- Sidebar Navigation -->
            <ul class="sidebar-nav">
                <li>
                    <a href="#" class="sidebar-nav-menu">
                        <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                        <i class="hi hi-picture sidebar-nav-icon"></i>
                        <span class="sidebar-nav-mini-hide">轮播图广告</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/banner">轮播图上传</a>
                        </li>
                        <li>
                            <a href="/bannerManage">轮播图管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="sidebar-nav-menu">
                        <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                        <i class="fa fa-gift sidebar-nav-icon"></i>
                        <span class="sidebar-nav-mini-hide">糖果活动</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/activity">活动发布</a>
                        </li>
                        <li>
                            <a href="/activityManage">活动管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="sidebar-nav-menu">
                        <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                        <i class="fa fa-mortar-board sidebar-nav-icon"></i>
                        <span class="sidebar-nav-mini-hide">比特学堂</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/class">文章发布</a>
                        </li>
                        <li>
                            <a href="/classManage">文章管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="sidebar-nav-menu">
                        <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                        <i class="gi gi-parents sidebar-nav-icon"></i>
                        <span class="sidebar-nav-mini-hide">用户中心</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/userList">用户管理</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <div class="sidebar-separator push">
                <i class="fa fa-ellipsis-h"></i>
            </div>


        </div>
        <!-- END Sidebar Content -->
    </div>
    <!-- END Wrapper for scrolling functionality -->

    <!-- Sidebar Extra Info -->
    <div id="sidebar-extra-info" class="sidebar-content sidebar-nav-mini-hide">

        <div class="text-center">

            <small> Copyright &copy; bitcandy.one 2018 All Rights Reserved
                <br/>
                <a herf="">比特糖果</a> 版权所有
            </small>
        </div>
    </div>
    <!-- END Sidebar Extra Info -->
</div>
<!-- END Main Sidebar -->

<!-- Main Container -->
<div id="main-container">
    <header class="navbar navbar-inverse navbar-fixed-top">
        <!-- Left Header Navigation -->
        <ul class="nav navbar-nav-custom">
            <!-- Main Sidebar Toggle Button -->
            <li>
                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
                    <i class="fa fa-ellipsis-v fa-fw animation-fadeInRight" id="sidebar-toggle-mini"></i>
                    <i class="fa fa-bars fa-fw animation-fadeInRight" id="sidebar-toggle-full"></i>
                </a>
            </li>
            <!-- END Main Sidebar Toggle Button -->

            <!-- Header Link -->
            <li class="hidden-xs animation-fadeInQuick">
                <a href="">
                    <strong></strong>
                </a>
            </li>
            <!-- END Header Link -->
        </ul>
        <!-- END Left Header Navigation -->

        <!-- Right Header Navigation -->
        <ul class="nav navbar-nav-custom pull-right">

            <!-- User Dropdown -->
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                    <strong>欢迎您，<%=session.getAttribute("admin")%>&nbsp;&nbsp;&nbsp;</strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">

                    <li>
                        <a href="/">
                            <i class="hi hi-home pull-right"></i>
                            网站首页
                        </a>
                    </li>
                    <li>
                        <a href="#.html">
                            <i class="hi hi-retweet pull-right"></i>
                            切换用户
                        </a>
                    </li>
                    <li>
                        <a href="#.html">
                            <i class="hi hi-off pull-right"></i>
                            注销账号
                        </a>
                    </li>
                </ul>
            </li>
            <!-- END User Dropdown -->
        </ul>
        <!-- END Right Header Navigation -->
    </header>
    <!-- END Header -->