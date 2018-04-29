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
    <title>比特学堂</title>
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
      <!-- Title, Breadcrumb Start-->

      <!-- Title, Breadcrumb End-->
      <!-- Content Start -->
      <!-- Main Content start-->
      <div class="breadcrumb-wrapper">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
              <h2 class="title">比特学堂</h2>
            </div>
          </div>
        </div>
      </div>

      <div class="content">
        <div class="container">
          <div class="row">
            <div class="posts-block col-lg-12 col-md-12 col-sm-12 col-xs-12">

              <c:forEach var="bitclass" items="${bitclasses}">
              <article class="post hentry">
                <div class="post-content-wrap">
                  <header class="post-header">
                    <div class="post-date">
                      <a class="date" href="#">
                        <strong>05</strong>
                        <i>3月</i>
                      </a>
                    </div>
                    <h3 class="content-title"><a href="#">${bitclass.getTitle()}</a></h3>
                    <div class="blog-entry-meta">
                      <div class="blog-entry-meta-author">
                        <i class="icon-user"></i>
                        <a class="blog-entry-meta-author">${bitclass.getAuth()}</a>
                      </div>
                      <div class="blog-entry-meta-tags">
                        <i class="icon-time"></i>
                        <a href="#" class="grey">${bitclass.getTime()}</a>
                      </div>
                    </div>
                  </header>
                  <div class="post-content">
                    ${bitclass.getContent()}
                  </div>
                </div>
                <div class="clearfix"></div>
              </article>
              <div class="blog-divider"></div>
              </c:forEach>

              <div class="pagination-centered">
                <ul class="pagination">
                  <li class="disabled"><a href="#">«</a></li>
                  <li class="active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <!-- Sidebar End -->
          </div>
        </div>
      </div>
      <!-- Main Content end-->
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