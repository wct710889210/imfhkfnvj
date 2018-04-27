<!DOCTYPE html>
<html class="no-js" lang="zh-cn">

  <head>
    <meta charset="utf-8">

    <title>比特糖果管理中心</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Stylesheets -->
    <!-- Bootstrap is included in its original form, unaltered -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="css/plugins.css">

    <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="css/main.css">

    <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

    <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
    <link rel="stylesheet" href="css/themes.css">
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- END Stylesheets -->

    <!-- Modernizr (browser feature detection library) -->
    <script src="js/vendor/modernizr-3.3.1.min.js"></script>
    <!--富文本编辑器部分 开头-->
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <script type="text/javascript" charset="utf-8" src="UEditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="UEditor/ueditor.all.min.js">
    </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="UEditor/lang/zh-cn/zh-cn.js"></script>
    <!--富文本编辑器部分 结尾-->
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
              <img src="img/logo.png" width="25%">
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
                <li>
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
                      <a href="aactivity.html">活动管理</a>
                    </li>
                  </ul>
                </li>
                <li class="active">
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="fa fa-mortar-board sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">比特学堂</span>
                  </a>
                  <ul>
                    <li>
                      <a href="class.html" class="active">文章发布</a>
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
              <!-- END Sidebar Navigation -->


              <!-- <div class="sidebar-section sidebar-nav-mini-hide"> -->
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
                    <h1>比特学堂</h1>
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
                <h2>文章修改</h2>
              </div>
              <!-- END Get Started Title -->

              <!-- Get Started Content -->
              <form action="{$Think.config.GOTO}Admin/News/add" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered">
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">标题</label>
                  <div class="col-md-6">
                    <input type="text" id="example-text-input" name="title" class="form-control" required="required" value="123" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">发布人</label>
                  <div class="col-md-6">
                    <input type="text" id="example-text-input" name="author" class="form-control" required="required" value="123"/>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-textarea-input">内容</label>
                  <div class="col-md-6">
                    <script id="editor" type="text/plain" style="height:300px;">sdad</script>
                  </div>
                </div>
                <div class="form-group form-actions">
                  <div class="col-md-9 col-md-offset-3">
                    <button type="submit" class="btn btn-effect-ripple btn-primary">
                      发布
                    </button>
                    <button type="reset" class="btn btn-effect-ripple btn-danger">
                      重置
                    </button>
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
    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/app.js"></script>
    <!--富文本编辑器的脚本-->
    <script type="text/javascript">
      //实例化编辑器
      //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
      var ue = UE.getEditor('editor');


      function isFocus(e) {
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
      }

      function setblur(e) {
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
      }

      function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
      }

      function createEditor() {
        enableBtn();
        UE.getEditor('editor');
      }

      function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
      }

      function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
      }

      function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
      }

      function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
      }

      function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
      }

      function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
      }

      function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
      }

      function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
      }

      function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
      }

      function setFocus() {
        UE.getEditor('editor').focus();
      }

      function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
      }

      function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
          if (btn.id == str) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
          } else {
            btn.setAttribute("disabled", "true");
          }
        }
      }

      function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
          UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
      }

      function getLocalData() {
        alert(UE.getEditor('editor').execCommand("getlocaldata"));
      }

      function clearLocalData() {
        UE.getEditor('editor').execCommand("clearlocaldata");
        alert("已清空草稿箱")
      }
    </script>
  </body>

</html>