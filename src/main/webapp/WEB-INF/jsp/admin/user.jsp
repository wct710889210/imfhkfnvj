<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html class="no-js" lang="zh-cn">
  <!--<![endif]-->

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

        <%@include file="header.jsp"%>

          <!-- Page content -->
          <div id="page-content">
            <!-- Blank Header -->
            <div class="content-header">
              <div class="row">
                <div class="col-sm-6">
                  <div class="header-section">
                    <h1>用户中心</h1>
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
                <h2>用户管理</h2>
              </div>
              <!-- END Get Started Title -->

              <!-- Get Started Content -->
              <div class="table-responsive">
                <table id="example-datatable" class="table table-striped table-bordered table-vcenter">
                  <thead>
                    <tr>
                      <th class="text-center">
                        序号
                      </th>
                      <th class="text-center">
                        邮箱
                      </th>
                      <th class="text-center">
                        注册时间
                      </th>
                      <th class="text-center">
                        账户余额
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                      <c:forEach var="user" items="${users}">
                      <tr>
                        <td class="text-center">
                          ${user.getId()}
                        </td>
                        <td class="text-center">
                          ${user.getAccount()}
                        </td>
                        <td class="text-center">
                          ${user.getTime()}
                        </td>
                        <td class="text-center">
                          ${user.getBalance()}
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