<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html>

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <title>Metronic Shop UI</title>

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
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/pages/css/animate.css" rel="stylesheet">
  <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/pages/css/components.css" rel="stylesheet">
  <link href="assets/pages/css/slider.css" rel="stylesheet">
  <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="assets/corporate/css/style.css" rel="stylesheet">
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
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <!-- BEGIN USER LOGIN DROPDOWN -->
                        <c:choose>
                        	<c:when test="${empty sessionScope.user_session}">
	              				<li class="dropdown user">
	              				    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" height="20px" src="<%=path%>/image/avatar1_small.jpg" /> <span class="username">游客您好</span> <i class="icon-angle-down"></i> </a> 
		                        	<ul class="dropdown-menu">
		                        		<li>
		                                    <a href="<%=path%>/user/toLogin"><i class="icon-user"></i> 登录/注册</a>
		                                </li>
		                        	</ul>
		                        </li>          	
                        	</c:when>
                        	<c:otherwise>
                        	    <input type="hidden" id="isLoginId" value="${user_session.id}"/>
                        	
								<li class="dropdown user">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="<%=path%>/image/avatar1_small.jpg" /> 
									<span class="username">${user_session.username }</span> 
									<i class="icon-angle-down"></i> </a>
		                            <ul class="dropdown-menu">		
		                                <li>
		                                    <a href="/user/toPersonInfo?id=${user_session.id}"><i class="icon-user"></i>个人中心</a>
		                                </li>		
		                                <li>
		                                    <a href="/blog/toMyBlog?id=${user_session.id}"><i class="icon-stackexchange"></i> 我的发布</a>
		                                </li>		
		                                <li>
		                                    <a href="/message/toMyMessageList?id=${user_session.id}"><i class="icon-comment"></i> 我的评论</a>
		                                </li>
		                                <li>
		                                    <a href="/message/toReplyMyMessageList?id=${user_session.id}"><i class="icon-envelope"></i> 回复我的</a>
		                                </li>		
		
		                                <li class="divider"></li>
										<c:if test="${user_session.isManager eq 1}">
			                                <li>
			                                    <a href="/chanyan/manager/toUserList"><i class="icon-lock"></i> 后台管理</a>
			                                </li>																				
										</c:if>		
		                                <li>
		                                    <a href="/chanyan/user/outLogin"><i class="icon-key"></i> 注销</a>
		                                </li>
		                                <li>
		                                    <a href="/toHelp"><i class="icon-question-sign"></i> 帮助</a>
		                                </li>		
		                            </ul>
                        		</li>                        	
                        	</c:otherwise>
                        </c:choose>
                        <!-- END USER LOGIN DROPDOWN -->
                        
                        <!-- <li><a href="shop-account.html">My Account</a></li>
                        <li><a href="shop-wishlist.html">My Wishlist</a></li> -->
                        <!-- <li><a href="shop-checkout.html">我的订单</a></li>
                        <li><a href="/jsp/login.jsp">登录/注册</a></li> -->
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="/chanyan/user/toIndexDoor"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="二手竞价交易平台"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
              所有商品
              </a>

            </li>
            <li><a href="shop-item.html">最新商品</a></li>
            <li><a href="shop-item.html">竞价商品</a></li>
            <li><a href="shop-item.html">发布商品</a></li>


            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                <form action="#">
                  <div class="input-group">
                    <input type="text" placeholder="Search" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">搜索</button>
                    </span>
                  </div>
                </form>
              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->
    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网站建设</a></div>

    <!-- BEGIN SLIDER -->
    <div class="page-slider margin-bottom-35">
        <div id="carousel-example-generic" class="carousel slide carousel-slider">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="item carousel-item-four active">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase" data-animation="animated fadeInDown">
                                Tones of <br/><span class="color-red-v2">Shop UI Features</span><br/> designed
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInUp">Lorem ipsum dolor sit amet constectetuer diam <br/>
                            adipiscing elit euismod ut laoreet dolore.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Second slide -->
                <div class="item carousel-item-five">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="animate-delay carousel-title-v4" data-animation="animated fadeInDown">
                                Unlimted
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInDown">
                                Layout Options
                            </p>
                            <p class="carousel-subtitle-v3 margin-bottom-30" data-animation="animated fadeInUp">
                                Fully Responsive
                            </p>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">See More Details</a>
                        </div>
                        <img class="carousel-position-five animate-delay hidden-sm hidden-xs" src="assets/pages/img/shop-slider/slide2/price.png" alt="Price" data-animation="animated zoomIn">
                    </div>
                </div>

                <!-- Third slide -->
                <div class="item carousel-item-six">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <span class="carousel-subtitle-v3 margin-bottom-15" data-animation="animated fadeInDown">
                                Full Admin &amp; Frontend
                            </span>
                            <p class="carousel-subtitle-v4" data-animation="animated fadeInDown">
                                eCommerce UI
                            </p>
                            <p class="carousel-subtitle-v3" data-animation="animated fadeInDown">
                                Is Ready For Your Project
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Fourth slide -->
                <div class="item carousel-item-seven">
                   <div class="center-block">
                        <div class="center-block-wrap">
                            <div class="center-block-body">
                                <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                    The most <br/>
                                    wanted bijouterie
                                </h2>
                                <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>
    <!-- END SLIDER -->

    <div class="main">
      <div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SALE PRODUCT -->
          <div class="col-md-12 sale-product">
            <h2>最新上架</h2>
            <div class="owl-carousel owl-carousel5">
              <c:forEach  items="${newGoodsList}" var="goods" >
              
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="${goods.path}" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="${goods.path}" class="btn btn-default fancybox-button">大图</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">详情</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">${goods.gname}</a></h3>
                  <div class="pi-price">${goods.price}</div>
                  <a href="javascript:;" class="btn btn-default add2cart">加入购物车</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div>
              
              </c:forEach>
              
              
            </div>
          </div>
          <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
<!--               <li class="list-group-item clearfix dropdown">
                <a href="shop-product-list.html">
                  <i class="fa fa-angle-right"></i>
                  Mens
                  
                </a>
                <ul class="dropdown-menu">
                  <li class="list-group-item dropdown clearfix">
                    <a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Shoes </a>
                      <ul class="dropdown-menu">
                        <li class="list-group-item dropdown clearfix">
                          <a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Classic </a>
                          <ul class="dropdown-menu">
                            <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Classic 1</a></li>
                            <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Classic 2</a></li>
                          </ul>
                        </li>
                        <li class="list-group-item dropdown clearfix">
                          <a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Sport  </a>
                          <ul class="dropdown-menu">
                            <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Sport 1</a></li>
                            <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Sport 2</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>
                  <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Trainers</a></li>
                  <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Jeans</a></li>
                  <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Chinos</a></li>
                  <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> T-Shirts</a></li>
                </ul>
              </li> -->
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 电脑数码</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 家用电器</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 户外运动</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 服饰鞋包</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 个护化妆</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 母婴用品</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 日用百货</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> 其他商品</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-8">
            <h2>Three items</h2>
            <div class="owl-carousel owl-carousel3">
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-new"></div>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress2</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress3</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress4</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress5</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress6</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
          <!-- BEGIN TWO PRODUCTS -->
          <div class="col-md-6 two-items-bottom-items">
            <h2>Two items</h2>
            <div class="owl-carousel owl-carousel2">
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="assets/pages/img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="assets/pages/img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
            </div>
          </div>
          <!-- END TWO PRODUCTS -->
          <!-- BEGIN PROMO -->
          <div class="col-md-6 shop-index-carousel">
            <div class="content-slider">
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="assets/pages/img/index-sliders/slide1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                  <div class="item">
                    <img src="assets/pages/img/index-sliders/slide2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                  <div class="item">
                    <img src="assets/pages/img/index-sliders/slide3.jpg" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END PROMO -->
        </div>        
        <!-- END TWO PRODUCTS & PROMO -->
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

    <!-- BEGIN fast view of a product -->
    <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="assets/pages/img/products/model3.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model5.jpg"></a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h2>Cool green dress with red bell</h2>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>47.00</strong>
                      <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat Nostrud duis molestie at dolore.</p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>L</option>
                        <option>M</option>
                        <option>XL</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Add to cart</button>
                    <a href="shop-item.html" class="btn btn-default">More details</a>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    </div>
    <!-- END fast view of a product -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
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

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            var user = JSON.parse('<%=session.getAttribute("user_session_json")%>');
            if(user!=null){
            	location.href = "/chanyan/goods/getGoods?username="+user.username
            }else{
            	location.href = "/chanyan/goods/getGoods";  
            }


        });

    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>