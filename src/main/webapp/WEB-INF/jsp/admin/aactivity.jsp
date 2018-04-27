<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zh-cn">

  <head>
    <meta charset="utf-8">

    <title>比特糖果管理中心</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Stylesheets -->
    <!-- Bootstrap is included in its original form, unaltered -->
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">

    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="admin/css/plugins.css">

    <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="admin/css/main.css">

    <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

    <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
    <link rel="stylesheet" href="admin/css/themes.css">
    <link rel="shortcut icon" href="admin/img/favicon.png">
    <!-- END Stylesheets -->

    <!-- Modernizr (browser feature detection library) -->
    <script src="admin/js/vendor/modernizr-3.3.1.min.js"></script>
  </head>

  <body>
    <div id="page-wrapper" class="page-loading">
      <div class="preloader">
        <div class="inner">
          <!-- Animation spinner for all modern browsers -->
          <div class="preloader-spinner themed-background hidden-lt-ie10"></div>

          <!-- Text for IE9 -->
          <h3 class="text-primary visible-lt-ie10">
            <strong>Loading..</strong>
          </h3>
        </div>
      </div>
      <div id="page-container" class="header-fixed-top sidebar-visible-lg-full">

        <!-- Main Sidebar -->
        <div id="sidebar">
          <!-- Sidebar Brand -->
          <div id="sidebar-brand" class="themed-background text-center">
            <a href="index.html" class="sidebar-title">
              <img src="admin/img/logo.png" width="25%">
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
                    <i class="fa fa-list-alt sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">轮播图广告</span>
                  </a>
                  <ul>
                    <li>
                      <a href="banner.html">轮播图上传</a>
                    </li>
                    <li>
                      <a href="abanner.html">轮播图管理</a>
                    </li>
                  </ul>
                </li>
                <li class="active">
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="gi gi-notes_2 sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">糖果活动</span>
                  </a>
                  <ul>
                    <li>
                      <a href="activity.html">活动发布</a>
                    </li>
                    <li>
                      <a href="aactivity.html" class="active">活动管理</a>
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
                      <a href="class.html">文章发布</a>
                    </li>
                    <li>
                      <a href="aclass.html">文章管理</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="fa fa-mortar-board sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">用户中心</span>
                  </a>
                  <ul>
                    <li>
                      <a href="user.html">用户管理</a>
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
                <a herf="">比特糖果</a> 版权所有</small>
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
                  <strong>欢迎您，管理员 &nbsp;&nbsp;&nbsp;</strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">

                  <li>
                    <a href="#.html">
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

          <!-- Page content -->
          <div id="page-content">
            <!-- Blank Header -->
            <div class="content-header">
              <div class="row">
                <div class="col-sm-6">
                  <div class="header-section">
                    <h1>糖果活动</h1>
                  </div>
                </div>
                <div class="col-sm-6 hidden-xs">
                  <div class="header-section">
                    <ul class="breadcrumb breadcrumb-top">
                      <li>
                        <a href="">
                          <i class="fa fa-rotate-right"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!-- END Blank Header -->

            <!-- Get Started Block -->
            <div class="block full">
              <!-- Get Started Title -->
              <div class="block-title">
                <h2>糖果管理</h2>
              </div>
              <!-- END Get Started Title -->

              <!-- Get Started Content -->
              <div class="table-responsive">
                <table id="example-datatable" class="table table-striped table-bordered table-vcenter">
                  <thead>
                    <tr>
                      <th class="text-center" style="width: 75px;">序号</th>
                      <th class="text-center">标题</th>
                      <th class="text-center">截止日期</th>
                      <th class="text-center">状态</th>
                      <th class="text-center">是否置顶</th>
                      <th class="text-center" style="width: 75px;">操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="project" items="${projects}">
                      <tr>
                          <td class="text-center">序号递增显示</td>
                          <td class="text-center">${project.getTitle()}</td>
                          <td class="text-center">${project.getEndTime()}</td>
                          <td class="text-center">${project.getState()}</td>
                          <td class="text-center">
                              <label class="csscheckbox csscheckbox-info">
                                  <input type="checkbox"
                                      <c:if test="${project.isTop()}">checked</c:if>
                                  >
                                  <span></span>
                              </label>
                          </td>
                          <td class="text-center">
                              <a href="activityChange/${project.getId()}" data-toggle="tooltip" title="修改" class="btn btn-effect-ripple btn-xs btn-success">
                                  <i class="fa fa-pencil"></i>
                              </a>
                              <a href="activityDelete/${project.getId()}" data-toggle="tooltip" title="删除" class="btn btn-effect-ripple btn-xs btn-danger">
                                  <i class="fa fa-times"></i>
                              </a>
                          </td>
                      </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- END Get Started Content -->
            </div>
            <!-- END Get Started Block -->
          </div>
          <!-- END Page Content -->
        </div>
        <!-- END Main Container -->
      </div>
      <!-- END Page Container -->
    </div>
    <!-- END Page Wrapper -->

    <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
    <script src="admin/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="admin/js/vendor/bootstrap.min.js"></script>
    <script src="admin/js/plugins.js"></script>
    <script src="admin/js/app.js"></script>
  </body>

</html>