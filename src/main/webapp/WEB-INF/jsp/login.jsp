<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->

<head>
  <meta charset="utf-8">
  <title>用户登录</title>
  <meta name="description" content="比特糖果 区块链 代币 糖果 candy">
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Library CSS -->
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="css/animations.css" media="screen">
  <link rel="stylesheet" href="css/superfish.css" media="screen">
  <link rel="stylesheet" href="css/revolution-slider/css/settings.css" media="screen">
  <link rel="stylesheet" href="css/prettyPhoto.css" media="screen">
  <!-- Theme CSS -->
  <link rel="stylesheet" href="css/style.css">
  <!-- Skin -->
  <link rel="stylesheet" href="css/colors/blue.css" id="colors">
  <!-- Responsive CSS -->
  <link rel="stylesheet" href="css/theme-responsive.css">
  <!-- Switcher CSS -->
  <link href="css/switcher.css" rel="stylesheet">
  <link href="css/spectrum.css" rel="stylesheet">
  <link rel="shortcut icon" href="admin/img/favicon.png">
</head>

<body class="home">
<div class="wrap">
  <!-- Header Start -->

  <%@include file="header.jsp"%>

  <!-- Header End -->
  <!-- Content Start -->
  <!-- Main Content start-->
  <div id="main">
    <!-- Title, Breadcrumb Start-->
    <div class="breadcrumb-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
            <h2 class="title">用户登录</h2>
          </div>
        </div>
      </div>
    </div>
    <!-- Title, Breadcrumb End-->
    <!-- Main Content start-->
    <div class="content login">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 col-lg-offset-2 col-md-offset-2 col-sm-offset-3">
            <div class="row">
              <div class="col-md-8 col-md-offset-2">
                <div class="alert alert-danger alert-dismissible" role="alert" style="display:none">
                  <button type="button" class="close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <strong>错误!</strong>
                  <span id="error"></span>
                </div>
              </div>
            </div>
            <form method="post" class="reply" id="contact">
              <div class="row">
                <div class="col-lg-6 col-xs-12 col-lg-offset-3">
                  <label>请输入邮箱:
                    <span>*</span>
                  </label>
                  <input class="form-control" id="account" name="account" type="text" value="" required>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-xs-12 col-lg-offset-3">
                  <label>请输入密码:
                    <span>*</span>
                  </label>
                  <input class="form-control" id="password" name="password" type="password" value="" required>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-xs-12 col-lg-offset-3 text-center">
                  <a class="btn-color btn-small btn-pad left" href="#" id="login">登录</a>
                  <a class="btn-grey btn-small btn-pad" href="register">注册</a>
                </div>
              </div>

              <div class="clearfix">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Main Content end-->
  </div>

  <footer id="footer">
    <!-- Footer Bottom Start -->
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 "> &copy; bitcandy.one 2018 All Rights Reserved.</div>
          <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
            <ul class="social social-icons-footer-bottom">
              <li class="facebook">
                <a href="#" data-toggle="tooltip" title="Facebook">
                  <i class="icon-facebook"></i>
                </a>
              </li>
              <li class="twitter">
                <a href="#" data-toggle="tooltip" title="Twitter">
                  <i class="icon-twitter"></i>
                </a>
              </li>
              <li class="dribbble">
                <a href="#" data-toggle="tooltip" title="Dribble">
                  <i class="icon-dribbble"></i>
                </a>
              </li>
              <li class="linkedin">
                <a href="#" data-toggle="tooltip" title="LinkedIn">
                  <i class="icon-linkedin"></i>
                </a>
              </li>
              <li class="rss">
                <a href="#" data-toggle="tooltip" title="Rss">
                  <i class="icon-rss"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Bottom End -->
  </footer>
  <!-- Scroll To Top -->
  <a href="#" class="scrollup">
    <i class="icon-angle-up"></i>
  </a>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/superfish.js"></script>
<script src="js/tweetMachine.js"></script>
<script src="js/tytabs.js"></script>
<script src="js/jquery.gmap.min.js"></script>
<script src="js/circularnav.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jflickrfeed.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/switcher.js"></script>
<script src="js/custom.js"></script>
<script>
  $('.close').on('click', function () {
    $('.alert').fadeOut(500, function () {
    });
  });

  $('#login').on('click', function () {
    var account = $('#account').val();
    var password = $('#password').val();
    console.log(account);
    console.log(password);
    var Reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
    if (!Reg.test(account)) {
      $('#error').html('邮箱格式有误，请重新输入！');
      $('.alert').fadeIn(500, function () {
      });
    } else if (password == '') {
      $('#error').html('密码不能为空，请重新输入！');
      $('.alert').fadeIn(500, function () {
      });
    } else {
        $('#error').html('正在进行登录验证，请稍等');
        $('.alert').fadeIn(500, function () {
        });
        formSubmit();
    }
  })

  function formSubmit() {
      var text = "account=" + $("[name=account]").val().toString() + "&password=" + $("[name=password]").val().toString();
      $.ajax({
          data: text,
          type: "post",
          url: "/bitcandy/loginCheck",
          success: function (response) {
              if (response == "0") {
                  $('#error').html('登录成功');
                  $('.alert').fadeIn(500, function () {
                  });
                  setTimeout("window.location.href='/bitcandy/mine'", 1000);
              }else if (response == "1") {
                  $('#error').html('不存在此用户');
                  $('.alert').fadeIn(500, function () {
                  });
              }else if(response == "2"){
                  $('#error').html('密码错误');
                  $('.alert').fadeIn(500, function () {
                  });
              }else if(response == "3"){
                  $('#error').html('账号未激活');
                  $('.alert').fadeIn(500, function () {
                  });
              }
          }
      })
  }
</script>

</body>

</html>