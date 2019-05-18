<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  isELIgnored="false"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 


<html>

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <title>Checkout | Metronic Shop UI</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/pages/css/components.css" rel="stylesheet">
  <link href="assets/corporate/css/style.css" rel="stylesheet">
  <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1057544696@qq.com</span></li>
                        <!-- END CURRENCIES -->
                        <!-- BEGIN LANGS -->
                        <li class="langs-block">
                            DESIGNED BY LIWAN
                        </li>
                        <!-- END LANGS -->
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <%-- <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <li><a href="shop-checkout.html">我的订单</a></li>
                        <li><a href="<%=path%>/user/toLogin">登录/注册</a></li>
                    </ul>
                </div> --%>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="/chanyan/user/toIndexDoor"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li >
              <a  href="/chanyan/goods/toAllProduct?username=${user_session.username}">
              	所有商品
              </a>
              <!-- <ul class="dropdown-menu">
                <li class="active"><a href="shop-index.html">电脑数码</a></li>
                <li><a href="shop-index-header-fix.html">家用电器</a></li>
                <li><a href="shop-index-header-fix.html">户外运动</a></li>
                <li><a href="shop-index-header-fix.html">服饰鞋包</a></li>
                <li><a href="shop-index-header-fix.html">个护化妆</a></li>
                <li><a href="shop-index-header-fix.html">母婴用品</a></li>
                <li><a href="shop-index-header-fix.html">日用百货</a></li>
                <li><a href="shop-index-header-fix.html">其他商品</a></li>
              </ul> -->
            </li>
            <li><a href="/chanyan/goods/getNewGoods?username=${user_session.username}">最新商品</a></li>
            <li><a href="/chanyan//goods/getCpGoods?username=${user_session.username}">竞价商品</a></li>
            <li><a href="shop-item.html">发布商品</a></li>

          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->

    <div class="main">
      <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>HI，你好</h1>
            <!-- BEGIN CHECKOUT PAGE -->
            <div class="panel-group checkout-page accordion scrollable" id="checkout-page">

              <!-- BEGIN CHECKOUT -->
              <div id="checkout" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#checkout-content" class="accordion-toggle">
                       	  登录
                    </a>
                  </h2>
                </div>
                <div id="checkout-content" class="panel-collapse collapse in">
                  <div class="panel-body row">
                    <div class="col-md-6 col-sm-6">
                      <img src="assets/pages/img/products/p7.jpg" class="img-responsive" alt="Berry Lace Dress">
                    </div>
                    <div class="col-md-6 col-sm-6">
                      

                        
                        <div class="form-group">
                          <label for="username-login">账号</label>
                          <input type="text" id="username" name="username" class="form-control">
                        </div>
                        <div class="form-group">
                          <label for="password-login">密码</label>
                          <input type="password" id="password" name="password" class="form-control">
                        </div>
                        <div class="padding-top-20">                  
                          <button class="btn btn-primary" onclick="login()">登录</button>
                          <button class="btn btn-primary" type="reset"   data-toggle="collapse" data-parent="#checkout-page" data-target="#payment-address-content">注册</button>
                        </div>

                        
                        <hr>
                      
                    </div>
                  </div>
                </div>
              </div>
              <!-- END CHECKOUT -->

              <!-- BEGIN PAYMENT ADDRESS -->
              <div id="payment-address" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-address-content" class="accordion-toggle">
                     	 注册
                    </a>
                  </h2>
                </div>
                <div id="payment-address-content" class="panel-collapse collapse">
                  <div class="panel-body row">
                    <div class="col-md-6 col-sm-6">
                      <div class="form-group">
                        <label for="username">用户名<span class="require">*</span></label>
                        <input type="text" id="username1" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="password">密码<span class="require">*</span></label>
                        <input type="password" id="password1" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="passwordcf">确认密码<span class="require">*</span></label>
                        <input type="text" id="passwordcf" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                     <div class="form-group">
                        <label for="email">E-Mail<span class="require">*</span></label>
                        <input type="email" id="email" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="phone">联系方式<span class="require">*</span></label>
                        <input type="text" id="phone" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="birthday">生日<span class="require">*</span></label>
                        <input type="date" id="birthday" class="form-control">
                      </div>
                    </div>
                    <hr>
                    <div class="col-md-12">                      
                      <button class="btn btn-primary  pull-right"  onclick="resign()" data-toggle="collapse" data-parent="#checkout-page" data-target="#shipping-address-content" id="resigner">完成注册</button>                       
                    </div>
                  </div>
                </div>

              </div>
              <!-- END PAYMENT ADDRESS -->
            </div>
            <!-- END CHECKOUT PAGE -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

    <!-- BEGIN STEPS -->
    <div class="steps-block steps-block-red">
      <div class="container">
        <div class="row">
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-truck"></i>
            <div>
              <h2>选择商品</h2>
              <em>闲置交换，价值无限。</em>
            </div>
            <span>&nbsp;</span>
          </div>
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-gift"></i>
            <div>
              <h2>发布商品</h2>
              <em>加入闲置置换，享受低碳生活。</em>
            </div>
            <span>&nbsp;</span>
          </div>
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-phone"></i>
            <div>
              <h2>竞价商品</h2>
              <em>旧货换新品，生活乐无忧。</em>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END STEPS -->

    

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-4 col-sm-4 padding-top-10">
            designed by liwan <a href="http://www.cczu.edu.cn/" target="_blank" title="CCZU">CCZU</a> - Collect from <a href="http://www.cczu.edu.cn//" title="常州大学" target="_blank">常州大学</a>
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-4 col-sm-4">
            <ul class="list-unstyled list-inline pull-right">
              <li><img src="assets/corporate/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
              <li><img src="assets/corporate/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
              <li><img src="assets/corporate/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
              <li><img src="assets/corporate/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
              <li><img src="assets/corporate/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
          <!-- BEGIN POWERED -->
          <div class="col-md-4 col-sm-4 text-right">
            <p class="powered">为你所选</p>
          </div>
          <!-- END POWERED -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->
    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->
    <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="assets/pages/scripts/checkout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Checkout.init();
            
        });
        function login(){
                var name =$("#username").val();//#是id选择器
                var pwd =$("#password").val();
                var localObj = window.location;
            	var contextPath = localObj.pathname.split("/")[1];
            	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;

                if(name==""){
                    alert("用户名不能为空！");
                    return false;
                }
                else if(pwd==""){
                    alert("密码不能为空！");
                    return false;
                }
                else
                {
                $.ajax({
                    type:'post',
                    url:'/chanyan/user/login',
                    dataType:"json",//注意使用的是打他dataType，而不是Content-Type
                    //async: true,
                    data:{username:name,password:pwd},
                    success:function(data){
                       if(data==null){
                           alert("您输入的账号或密码错误！")
                       }
                       else{
                           alert("登录成功")
                           /* window.location.href ="index"; */
                           location.href = basePath+"/user/toIndexDoor";
                       }
                    }
                });
               }
           }
        
            function resign() {
        	  var name =$("#username1").val();//#是id选择器
              var pwd =$("#password1").val();
              var pwdcf =$("#passwordcf").val();
              var mail =$("#email").val();
              var phone =$("#phone").val();
              var birthday =$("#birthday").val(); 
              var localObj = window.location;
          	  var contextPath = localObj.pathname.split("/")[1];
          	  var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
          	  var regemail=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/; 
          	  var regMobile=/^1\d{10}$/;
          	  if(name==""){
                  alert("用户名不能为空！");
                  return false;
              }
              else if(pwd==""){
                  alert("密码不能为空！");
                  return false;
              }	
          	  if(pwd!=pwdcf){
	                alert("两次密码输入不一致！");
	                return false;
	            }
	          	if(regemail.test(mail)==false){
	                alert("Email格式不正确，例如web@sohu.com");
	              return false;
	             }
	          	if(regMobile.test(phone)==false){
	                alert("手机号码不正确，请重新输入");
	                return false;
	                }
        	  $.ajax({
  			    type: "POST",
  			    dataType: "text",
  			    url: "/chanyan/user/register",
  			    data: {username:name,password:pwd,email:mail,phone:phone,birthday:birthday },
  			    success: function(result) {
  			    	 console.log(result);
  			    	if(result =="success") {
  			    		alert("注册成功")
  			    	   location.href = "/chanyan/user/toLogin"; 
  			      }else{
  			    	   alert("该用户已存在，注册失败");
  			      }
  			    },
         		error: function(result){
         		  alert("失败");
         		}
          	});
         }   

    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>