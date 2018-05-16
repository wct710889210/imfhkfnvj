<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie ie9"> <![endif]-->
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
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/fonts/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="/css/animations.css" media="screen">
  <link rel="stylesheet" href="/css/superfish.css" media="screen">
  <link rel="stylesheet" href="/css/revolution-slider/css/settings.css" media="screen">
  <link rel="stylesheet" href="/css/prettyPhoto.css" media="screen">
  <!-- Theme CSS -->
  <link rel="stylesheet" href="/css/style.css">
  <!-- Skin -->
  <link rel="stylesheet" href="/css/colors/blue.css" id="colors">
  <!-- Responsive CSS -->
  <link rel="stylesheet" href="/css/theme-responsive.css">
  <!-- Switcher CSS -->
  <link href="/css/switcher.css" rel="stylesheet">
  <link href="/css/spectrum.css" rel="stylesheet">
  <link rel="shortcut icon" href="/admin/img/favicon.png">
</head>

<body class="home">
<div class="wrap">
  <!-- Header Start -->

  <%@include file="header.jsp"%>

  <!-- Header End -->
  <!-- Content Start -->
  <!-- Main Content start-->
  <div id="main">
    <!-- Main Content start-->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12 col-lg-offset-1">
            <article class="post hentry">
              <h2 class="text-center">${bitclass.getTitle()}</h2>
              <div class="blog-entry-meta text-center">
                <div class="blog-entry-meta-author">
                  <i class="icon-user"></i>
                  <a class="blog-entry-meta-author">${bitclass.getAuth()}</a>
                </div>
                <div class="blog-entry-meta-tags">
                  <i class="icon-time"></i>
                  <a href="#" class="grey">${bitclass.getTime()}</a>
                </div>
              </div>
              <div class="post-content">
              ${bitclass.getContent()}
              </div>
            </article>
          </div>
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

<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery.parallax.js"></script>
<script src="/js/modernizr-2.6.2.min.js"></script>
<script src="/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
<script src="/js/jquery.nivo.slider.pack.js"></script>
<script src="/js/jquery.prettyPhoto.js"></script>
<script src="/js/superfish.js"></script>
<script src="/js/tweetMachine.js"></script>
<script src="/js/tytabs.js"></script>
<script src="/js/jquery.gmap.min.js"></script>
<script src="/js/circularnav.js"></script>
<script src="/js/jquery.sticky.js"></script>
<script src="/js/jflickrfeed.js"></script>
<script src="/js/imagesloaded.pkgd.min.js"></script>
<script src="/js/waypoints.min.js"></script>
<script src="/js/switcher.js"></script>
<script src="/js/custom.js"></script>
</body>

</html>