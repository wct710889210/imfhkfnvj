<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
  <!--<![endif]-->

  <head>
    <meta charset="utf-8">
    <title>比特糖果</title>
    <meta name="description" content="比特糖果 区块链 代币 糖果 candy">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Library CSS -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="../css/animations.css" media="screen">
    <link rel="stylesheet" href="../css/superfish.css" media="screen">
    <link rel="stylesheet" href="../css/revolution-slider/css/settings.css" media="screen">
    <link rel="stylesheet" href="../css/prettyPhoto.css" media="screen">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- Skin -->
    <link rel="stylesheet" href="../css/colors/blue.css" id="colors">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../css/theme-responsive.css">
    <!-- Switcher CSS -->
    <link href="../css/switcher.css" rel="stylesheet">
    <link href="../css/spectrum.css" rel="stylesheet">

  </head>

  <body class="home">
    <div class="wrap">
      <!-- Header Start -->
      <%@include file="header.jsp"%>
      <!-- Header End -->
      <!-- Content Start -->
      <div id="main">
        <!-- Slider Start-->
        <div class="fullwidthbanner-container">
          <div class="fullwidthbanner rslider">
            <ul>
              <!-- THE FIRST SLIDE -->
              <li data-delay="6000" data-masterspeed="300" data-transition="fade">
                <div class="slotholder">
                  <img src="../img/slider/slider-bg-1.jpg" data-fullwidthcentering="on" alt="Pixma">
                </div>
                <div class="caption modern_big_bluebg h1 lft tp-caption start" data-x="400" data-y="85" data-speed="700" data-endspeed="800"
                  data-start="1000" data-easing="easeOutQuint" data-endeasing="easeOutQuint">
                  <h3>${project.getTitle()}</h3>
                </div>
                <div class="caption list_slide lfb tp-caption start" data-easing="easeOutExpo" data-start="1400" data-speed="1050" data-y="180"
                  data-x="600">
                  <div class="list-slide">
                    <i class="icon-tag slide-icon"></i>
                    <h5 class="dblue">${project.getState()}</h5>
                  </div>
                </div>
                <div class="caption list_slide lfb tp-caption start" data-easing="easeOutExpo" data-start="1800" data-speed="1200" data-y="230"
                  data-x="600">
                  <div class="list-slide">
                    <i class="icon-time slide-icon"></i>
                    <h5 class="dblue"> ${project.getEndTime()} </h5>
                  </div>
                </div>
                <div class="caption list_slide lfb tp-caption start" data-easing="easeOutExpo" data-start="2200" data-speed="1350" data-y="280"
                  data-x="600">
                  <div class="list-slide">
                    <i class="icon-code slide-icon"></i>
                    <h5 class="dblue">比特糖果 </h5>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="content">
          <div class="container">
            <div class="row">
              <div class="posts-block col-lg-6 col-md-6 col-sm-12 col-xs-12 offset-6 col-md-offset-3">
                <article>
                  <h3 class="title">如何领取</h3>
                  <div class="post-content">
                    <p>
                      ${project.getMethod()}
                    </p>
                  </div>
                </article>
              </div>
            </div>
            <div class="row">
              <div class="posts-block col-lg-6 col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <article>
                  <h3 class="title">领取有效期</h3>
                  <div class="post-content">
                    <p>
                      ${project.getEndTime()} </p>
                  </div>
                </article>
              </div>
            </div>
            <div class="row">
              <div class="posts-block col-lg-6 col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <article>
                  <h3 class="title">项目介绍</h3>
                  <div class="post-content">
                    <p>
                      ${project.getContent()}
                    </p>
                  </div>
                </article>
              </div>
            </div>
            <div class="row">
              <div class="posts-block col-lg-6 col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <div class="text-center">
                  <a href="${project.getAddress()}" class="btn-normal btn-color">
                    <i class="icon-hand-right icon-large"></i> 立即领取</a>
                </div>
              </div>
            </div>
            <div class="divider"></div>
            <div class="row">
              <div class="posts-block col-lg-6 col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <article>
                  <h3 class="title">免责声明</h3>
                  <div class="post-content">
                    <p>
                      本站仅为用户收集并筛选相关虚拟货币的糖果信息，并不对信息及项目承担任何责任，请注意明辨各个项目的风险，一切风险自担。</p>
                  </div>
                </article>
              </div>
            </div>
            <div class="divider"></div>
            <!-- contact box end End-->
          </div>
        </div>
        <div class="recentworks">
          <!-- 3 Column Big Services -->
          <div class="services-big">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <h3 class="title">其他项目</h3>
                </div>
                <div class="clearfix"></div>

                <c:forEach var="item" items="${projects}" begin="0" end="2">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                  <a href="../details/${item.getId()}" class="content-box">
                    <div class="content-box-icon">
                      <img src="../${item.getPath()}" alt=" " />
                    </div>
                    <div class="content-box-info">
                      <h4>${item.getTitle()}</h4>
                      <p>
                        ${item.getContent()}
                      </p>
                    </div>
                  </a>
                  <table class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>
                          <i class="icon-tag"></i>&nbsp;&nbsp;&nbsp;${item.getState()}</th>
                        <th>
                          <i class="icon-credit-card"></i>&nbsp;&nbsp;&nbsp;$${item.getPrice()}</th>
                        <th>
                          <i class="icon-time"></i>&nbsp;&nbsp;&nbsp;${item.getEndTime()}</th>
                      </tr>
                    </thead>
                  </table>
                </div>
                </c:forEach>

                <!-- 3 Column Services End-->
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Content End -->
      <!-- Footer Start -->
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
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery.parallax.js"></script>
    <script src="../js/modernizr-2.6.2.min.js"></script>
    <script src="../js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
    <script src="../js/jquery.nivo.slider.pack.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/superfish.js"></script>
    <script src="../js/tweetMachine.js"></script>
    <script src="../js/tytabs.js"></script>
    <script src="../js/jquery.gmap.min.js"></script>
    <script src="../js/circularnav.js"></script>
    <script src="../js/jquery.sticky.js"></script>
    <script src="../js/jflickrfeed.js"></script>
    <script src="../js/imagesloaded.pkgd.min.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/spectrum.js"></script>
    <script src="../js/switcher.js"></script>
    <script src="../js/custom.js"></script>
  </body>

</html>