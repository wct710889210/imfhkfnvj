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
    <link rel="stylesheet" href="../admin/css/bootstrap.min.css">

    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="../admin/css/plugins.css">

    <!-- The main stylesheet of this template. admin/All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="../admin/css/main.css">

    <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

    <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
    <link rel="stylesheet" href="../admin/css/themes.css">
    <link rel="shortcut icon" href="../admin/img/favicon.png">
    <!-- END Stylesheets -->

    <!-- Modernizr (browser feature detection library) -->
    <script src="../admin/js/vendor/modernizr-3.3.1.min.js"></script>
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
                    <h1>轮播图广告</h1>
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
                <h2>轮播图修改</h2>
              </div>
              <!-- END Get Started Title -->

              <!-- Get Started Content -->
              <form action="/bitcandy/bannerModify/${banner.getId()}" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered">

                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">轮播图介绍</label>
                  <div class="col-md-6">
                    <input type="text" id="example-text-input" name="description" class="form-control" value="${banner.getTitle()}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">活动链接</label>
                  <div class="col-md-6">
                    <input type="text" id="example-a-input" name="description" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-file-input">上传新轮播图</label>
                  <div class="col-md-9">
                    <input type="file" id="example-file-input" name="image">
                    <a href="../${banner.getPath()}" data-toggle="lightbox-image">
                      <img src="../${banner.getPath()}" height="200" style="margin: 10px 5px">
                    </a>
                  </div>
                </div>
                <div class="form-group form-actions">
                  <div class="col-md-9 col-md-offset-3">
                    <button type="submit" class="btn btn-effect-ripple btn-primary">发布</button>
                    <button type="reset" class="btn btn-effect-ripple btn-danger">重置</button>
                  </div>
                </div>
              </form>
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
    <script src="../admin/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="../admin/js/vendor/bootstrap.min.js"></script>
    <script src="../admin/js/plugins.js"></script>
    <script src="../admin/js/app.js"></script>
  </body>

</html>