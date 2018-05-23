<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
      <link rel="stylesheet" href="css/bootstrap.css">
      <link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.css">
      <link rel="stylesheet" href="css/animations.css" media="screen">
      <link rel="stylesheet" href="css/superfish.css" media="screen">
      <link rel="stylesheet" href="css/nivo-slider.css" media="screen">
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
        <div id="main">
          <!-- Slider Start-->
          <div class="slider-wrapper theme-default">
            <div id="nivoslider" class="nivoSlider"
            <c:forEach items="${banners}" var="banner">
              <a href="${banner.getUrl()}">
                <img src="${banner.getPath()}" alt="" data-transition="slideInRight" title="#htmlcaption${banner.getId()}">
              </a>
            </c:forEach>
          </div>
          <c:forEach var="banner" items="${banners}">
            <div id="htmlcaption${banner.getId()}" class="nivo-html-caption">
              <h2>
                <c:out value="${banner.getTitle()}" />
              </h2>
            </div>
          </c:forEach>
        </div>
          <div class="clearfix"></div>
          <!-- Slider End-->
          <!-- Main Content start-->
          <div class="main-content">
            <!-- 3 Column Big Services -->
            <div class="container" id="activity">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <h3 class="title">糖果列表</h3>
                </div>
                <div class="clearfix"></div>

                <%--<c:forEach var="project" items="${projects}">--%>
                  <%--<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">--%>
                    <%--<a href="details/${project.getId()}" class="content-box">--%>
                      <%--<div class="content-box-icon" style="height:270px;overflow: hidden;">--%>
                        <%--<img src="${project.getPath()}" alt=" " style="width: 100%"/>--%>
                      <%--</div>--%>
                      <%--<div class="content-box-info">--%>
                        <%--<h4 class="text_overflow1">${project.getTitle()}</h4>--%>
                        <%--<p class="text_overflow">--%>
                          <%--${project.getContent()}--%>
                        <%--</p>--%>
                      <%--</div>--%>
                    <%--</a>--%>
                    <%--<table class="table table-striped table-bordered">--%>
                      <%--<thead>--%>
                        <%--<tr>--%>
                          <%--<th>--%>
                            <%--<i class="icon-tag"></i>&nbsp;&nbsp;&nbsp;${project.getState()}</th>--%>
                          <%--<th>--%>
                            <%--<i class="icon-credit-card"></i>&nbsp;&nbsp;&nbsp;$${project.getPrice()}</th>--%>
                          <%--<th>--%>
                            <%--<i class="icon-time"></i>&nbsp;&nbsp;&nbsp;${project.getEndTime()}</th>--%>
                        <%--</tr>--%>
                      <%--</thead>--%>
                    <%--</table>--%>
                  <%--</div>--%>
                <%--</c:forEach>--%>

                <!-- 3 Column Services End-->
                <div class="clearfix"></div>
              </div>

              <div class="divider"></div>
            </div>
            <!-- Main Content end-->
            <!-- Recent works start-->
            <div class="recentworks">
              <div class="container">
                <div class="row">
                  <div class="posts-block col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h3 class="title">常见问题</h3>
                  </div>
                </div>
                <!-- 2 Column Testimonials -->
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="accordionMod panel-group">
                      <div class="accordion-item">
                        <h4 class="accordion-toggle">什么是“比特糖果”、“空投”、“薅羊毛”？</h4>
                        <section class="accordion-inner panel-body">
                          <p>
                             简单来说，可以把它们理解为：区块链世界里的“免费午餐”，是数字货币项目方免费赠送给投资人、潜在客户或项目参与者的数字货币资产。
                          </p>
                        </section>
                      </div>
                      <div class="accordion-item">
                        <h4 class="accordion-toggle">数字货币项目方为什么要广撒“比特糖果”？</h4>
                        <section class="accordion-inner panel-body">
                          <p>
                              这还得从互联网说起，“比特糖果”跟当年的互联网红包类似。免费午餐在互联网行业并不鲜见，相信大家对当年快的、滴滴现金红包大战记忆犹新。网络时代得用户者得天下，推广获客是互联网公司的主战场，为了能扩大用户基数、培养用户粘性，各大公司都不惜重金投入，提供补贴。自然，这种思维也蔓延到了币圈。对于我们吃瓜群众来说，这种羊毛自然是喜闻乐见的，不趁机薅一笔到时候难免追悔莫及。
                          </p>
                        </section>
                      </div>
                      <div class="accordion-item">
                        <h4 class="accordion-toggle">“比特糖果”发放主要有哪些形式？</h4>
                        <section class="accordion-inner panel-body">
                          <p>
                              目前的糖果发放主要有“分叉”和“空投”两种流派。
                          </p>
                        </section>
                      </div>
                      <div class="accordion-item">
                        <h4 class="accordion-toggle">如何获得“比特糖果”？</h4>
                        <section class="accordion-inner panel-body">
                          <p>
                              获取分叉糖果很简单，基本上什么都不要做，事先持有主流币坐等分叉即可；空投糖果则不需要你事先持有数字资产，通常由项目方直接发放。这类代币门槛较低，获取相对简单，价值也高低不定，方法也不一而足。最简单的办法就是经常关注“比特糖果”网站，获取最新的空头糖果信息和参与方法，轻松获得数字资产的原始积累。
                          </p>
                        </section>
                      </div>
                      <div class="accordion-item">
                        <h4 class="accordion-toggle">如何获得更多关于区块链和币圈的投资干货？</h4>
                        <section class="accordion-inner panel-body">
                          <p>
                              关注我们的公众号：bitcandy-one
                          </p>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- contact box end End-->
              </div>
            </div>
            <!-- Recent work end-->
            <!-- Our Clients Start-->
            <div class="our-clients">
              <div class="container">
                <div class="row">
                  <div class="client">
                    <div class="client-logo">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="clients-title">
                          <h3 class="title">合作伙伴</h3>
                          <div class="carousel-controls pull-right">
                            <a class="prev" href="#client-carousel" data-slide="prev">
                              <i class="icon-angle-left"></i>
                            </a>
                            <a class="next" href="#client-carousel" data-slide="next">
                              <i class="icon-angle-right"></i>
                            </a>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                          <div id="client-carousel" class="client-carousel slide">
                            <div class="carousel-inner">
                              <div class="item active">
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d1">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-1.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d2">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-2.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d3">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-3.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d4">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-4.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d1">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-1.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d2">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-2.png">
                              </a>
                                  </div>
                                </div>
                              </div>
                              <div class="item">
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-5.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-4.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-3.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-2.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d1">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-1.png">
                              </a>
                                  </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d2">
                                  <div class="item-inner">
                                    <a href="#">
                                <img alt="Upportdash" src="img/clientslogo/logo-2.png">
                              </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Our Clients End -->
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
        <h2>Style Switcher <a href="#"><i class="icon-cog"></i></a></h2>
        <div>
           <h3>Predefined Colors</h3>
           <ul id="colors" class="colors">
              <li><a title="Blue" class="blue" href="#"></a></li>
              <li><a title="Green" class="green" href="#"></a></li>
              <li><a title="Orange" class="orange" href="#"></a></li>
              <li><a title="Purple" class="purple" href="#"></a></li>
              <li><a title="Red" class="red" href="#"></a></li>
              <li><a title="Magenta" class="magenta" href="#"></a></li>
              <li><a title="Brown" class="brown" href="#"></a></li>
              <li><a title="Gray" class="gray" href="#"></a></li>
              <li><a title="Golden" class="golden" href="#"></a></li>
              <li><a title="Teal" class="teal" href="#"></a></li>
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
              <li><a class="bg1" href="#"></a></li>
              <li><a class="bg2" href="#"></a></li>
              <li><a class="bg3" href="#"></a></li>
              <li><a class="bg4" href="#"></a></li>
              <li><a class="bg5" href="#"></a></li>
              <li><a class="bg6" href="#"></a></li>
              <li><a class="bg7" href="#"></a></li>
              <li><a class="bg8" href="#"></a></li>
              <li><a class="bg9" href="#"></a></li>
              <li><a class="bg10" href="#"></a></li>
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
      
      <script>
        $.ajax({
            url: 'https://bitcandy.one/getHomeData',
            type: "post",
            cache: false,
            success: function (data) {
                console.log(data);
                var activity = data[1];
                $.each(activity,function (i,item) {
                    $("#activity").append(
                        `<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="details/` + item.id +`" class="content-box">
                      <div class="content-box-icon" style="height:270px;overflow: hidden;">
                        <img src="` + item.path + `" alt=" " style="width: 100%"/>
                      </div>
                      <div class="content-box-info">
                        <h4 class="text_overflow1">` + item.title + `}</h4>
                        <p class="text_overflow">
                          ` + item.content + `
                        </p>
                      </div>
                    </a>
                    <table class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>
                            <i class="icon-tag"></i>&nbsp;&nbsp;&nbsp;` + item.state + `</th>
                          <th>
                            <i class="icon-credit-card"></i>&nbsp;&nbsp;&nbsp;` + item.price + `</th>
                          <th>
                            <i class="icon-time"></i>&nbsp;&nbsp;&nbsp;` + item.endTime + `</th>
                        </tr>
                      </thead>
                    </table>
                  </div>`
                    )
                })
            }
        })
      </script>

    </body>

    </html>