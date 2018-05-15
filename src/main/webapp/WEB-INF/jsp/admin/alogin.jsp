<%@page contentType="text/html; charset=utf-8" %>
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
    <!-- Full Background -->
    <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
    <img src="admin/img/bg.jpg" alt="Full Background" class="full-bg animation-pulseSlow">
    <!-- END Full Background -->

    <!-- Login Container -->
    <div id="login-container">
      <!-- Login Header -->
      <h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
        <!-- <i class="fa fa-cube text-light-op"></i> <strong>AppUI</strong> -->
      </h1>
      <!-- END Login Header -->

      <!-- Login Block -->
      <div class="block animation-fadeInQuick">
        <!-- Login Title -->
        <div class="block-title">
          <h2>欢迎登录</h2>
        </div>
        <!-- END Login Title -->

        <!-- Login Form -->
        <form action="/adminLoginCheck" id="form-login" method="post" class="form-horizontal">
          <div class="form-group">
            <label for="login-email" class="col-xs-12">账号</label>
            <div class="col-xs-12">
              <input type="text" id="account" name="account" class="form-control" required="required">
            </div>
          </div>
          <div class="form-group">
            <label for="login-password" class="col-xs-12">密码</label>
            <div class="col-xs-12">
              <input type="password" id="password" name="password" class="form-control" required="required">
            </div>
          </div>
          <div class="form-group form-actions">
            <div class="col-xs-8">
              <label class="csscheckbox csscheckbox-primary">
                <input type="checkbox" id="login-remember-me" name="login-remember-me">
                <span></span> 记住我
              </label>
            </div>
            <div class="col-xs-4 text-right">
              <button type="submit" class="btn btn-effect-ripple btn-sm btn-success" value="登录">登录</button>
            </div>
          </div>
        </form>

      </div>
      <!-- END Login Block -->

      <!-- Footer -->
      <footer class="text-muted text-center animation-pullUp">
        <small> Copyright &copy; bitcandy.one 2018 All Rights Reserved </small>
      </footer>
      <!-- END Footer -->
    </div>
    <!-- END Login Container -->
    <!-- END Page Wrapper -->

    <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
    <script src="admin/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="admin/js/vendor/bootstrap.min.js"></script>
    <script src="admin/js/plugins.js"></script>
    <script src="admin/js/app.js"></script>
  </body>

</html>