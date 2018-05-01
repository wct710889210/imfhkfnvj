<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
  <!--<![endif]-->

  <head>
    <meta charset="utf-8">
    <title>用户中心</title>
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
      <div id="main">
        <!-- Title, Breadcrumb Start-->
        <div class="breadcrumb-wrapper">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                <h2 class="title mine">用户中心</h2>
                <span class="pull-right user">欢迎您，${user.getAccount()} <a href="#"> 注销</a></span>
              </div>

            </div>
          </div>
        </div>
        <!-- Title, Breadcrumb End-->
        <!-- Main Content start-->
        <div class="content">
          <div class="container">
            <div class="row">
              <div class="posts-block col-lg-10 col-md-8 col-sm-8 col-xs-12 col-lg-offset-1">
                <div class="row">
                  <div class="col-md-9">
                    <div class="well price">
                      <div class="row">
                        <div class="col-md-6">
                          <i class="icon-bitcoin icon-2x white wellleft"></i>
                        </div>
                        <div class="col-md-6">
                          <div class="text-center white wellright">${user.getBalance()}</div>
                          <div class="text-center white wellrightbt">
                            <c:if test="${user.isFrozen()}">
                              （冻结)
                            </c:if>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="row">
                      <a class="btn-color btn-normal btn-pad well text-center" href="#">充值（稍后开放）</a>
                      <a class="btn-grey btn-normal btn-pad well text-center" href="#">提现（实名认证）</a>
                    </div>
                  </div>
                </div>

                <div class="row">

                  <div class="col-md-7">

                    <div class="form-group">
                      <span>邀请朋友获取更多糖果</span>
                      <input type="text" class="form-control" value="${user.getInvite()}" disabled/>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <a class="btn-color btn-small btn-pad invite text-center" href="#">复制</a>
                  </div>

                </div>

                <!--<div class="row">
                  <div class="mine">
                    <h3 class="title" style="margin-top: 30px;">已邀请好友</h3>
                    <table class="table table-striped table-bordered text-center">
                      <thead>
                        <tr>
                          <th>注册用户</th>
                          <th>注册时间</th>
                          <th>获得糖果</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>未做好</td>
                          <td>2018年4月24日</td>
                          <td>+ 15 枚 BTCD</td>
                        </tr>
                        <tr>
                          <td>未做好</td>
                          <td>2018年4月24日</td>
                          <td>+ 15 枚 BTCD</td>
                        </tr>
                        <tr>
                          <td>未做好</td>
                          <td>2018年4月24日</td>
                          <td>+ 15 枚 BTCD</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>-->
              <!-- Left Section End -->
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
    <!-- Wrap End -->
    <!-- <section id="style-switcher">
    <h2>Style Switcher
      <a href="#">
        <i class="icon-cog"></i>
      </a>
    </h2>
    <div>
      <h3>Predefined Colors</h3>
      <ul id="colors" class="colors">
        <li>
          <a title="Blue" class="blue" href="#"></a>
        </li>
        <li>
          <a title="Green" class="green" href="#"></a>
        </li>
        <li>
          <a title="Orange" class="orange" href="#"></a>
        </li>
        <li>
          <a title="Purple" class="purple" href="#"></a>
        </li>
        <li>
          <a title="Red" class="red" href="#"></a>
        </li>
        <li>
          <a title="Magenta" class="magenta" href="#"></a>
        </li>
        <li>
          <a title="Brown" class="brown" href="#"></a>
        </li>
        <li>
          <a title="Gray" class="gray" href="#"></a>
        </li>
        <li>
          <a title="Golden" class="golden" href="#"></a>
        </li>
        <li>
          <a title="Teal" class="teal" href="#"></a>
        </li>
      </ul>
      <h3>Layout Style</h3>
      <div class="layout-style">
        <select autocomplete="off" id="layout-style">
          <option value="1">Wide</option>
          <option value="2">Boxed</option>
        </select>
      </div>
      <h3>Header Color</h3>
      <div class="header-color">
        <input type='text' class="header-bg" />
      </div>
      <h3>Footer Top Color</h3>
      <div class="header-color">
        <input type='text' class="footer-bg" />
      </div>
      <h3>Footer Bottom Color</h3>
      <div class="header-color">
        <input type='text' class="footer-bottom" />
      </div>
      <h3>Background Image</h3>
      <ul id="bg" class="colors bg">
        <li>
          <a class="bg1" href="#"></a>
        </li>
        <li>
          <a class="bg2" href="#"></a>
        </li>
        <li>
          <a class="bg3" href="#"></a>
        </li>
        <li>
          <a class="bg4" href="#"></a>
        </li>
        <li>
          <a class="bg5" href="#"></a>
        </li>
        <li>
          <a class="bg6" href="#"></a>
        </li>
        <li>
          <a class="bg7" href="#"></a>
        </li>
        <li>
          <a class="bg8" href="#"></a>
        </li>
        <li>
          <a class="bg9" href="#"></a>
        </li>
        <li>
          <a class="bg10" href="#"></a>
        </li>
      </ul>
    </div>
  </section> -->
    <!-- The Scripts -->
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
    <script src="js/spectrum.js"></script>
    <script src="js/switcher.js"></script>
    <script src="js/custom.js"></script>

  </body>

</html>