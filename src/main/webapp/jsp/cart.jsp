<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <title>Shopping cart | Metronic Shop UI</title>

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
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
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
		                                    <a href="/chanyan/user/touserCenter?username=${user_session.username}"><i class="icon-user"></i>个人中心</a>
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
        <a class="site-logo" href="shop-index.html"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li >
              <a  href="/chanyan/goods/toAllProduct?username=${user_session.username}">
              	所有商品
              </a>
            </li>
            <li><a href="/chanyan/goods/toAllProduct?username=${user_session.username}">最新商品</a></li>
            <li><a href="shop-item.html">竞价商品</a></li>
            <li><a href="shop-item.html">发布商品</a></li>


            <!-- BEGIN TOP SEARCH -->
            <!-- <li class="menu-search">
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
            </li> -->
            <!-- END TOP SEARCH -->
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
            <h1>购物车</h1>
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-image">图片</th>
                    <th class="goods-page-description">商品</th>
                    <th class="goods-page-ref-no"> </th>
                    <th class="goods-page-quantity">状态</th>
                    <th class="goods-page-price"></th>
                    <th class="goods-page-total" colspan="2">价格</th>
                  </tr>
                  <c:forEach items="${cart}" var="cart">
                  <tr>
                    
                    <td class="goods-page-image">
                      <a href="javascript:;"><img src="${cart.path}" alt="Berry Lace Dress"></a>
                    </td>
                    <td class="goods-page-description">
                      		<strong>${cart.gname}</strong>
                    </td>
                    <td class="goods-page-ref-no">
                     
                    </td>
                    <td class="goods-page-quantity">
                      <div class="product-quantity">
							<strong>${cart.issale}</strong>
                      </div>
                    </td>
                    <td class="goods-page-price">
                      
                    </td>
                    <td class="goods-page-price">
                     	<strong><span>￥</span>${cart.newprice}</strong>
                     	<c:set var="sum" value="${sum + cart.newprice }"></c:set>
                    </td>
                    <td class="del-goods-col">
                      <a class="del-goods" onclick="delCart('${cart.id}','${user_session.id}')">&nbsp;</a>
                    </td>
                   
                  </tr>
                   </c:forEach>
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
						
                    <li class="shopping-total-price">
                    <em><strong>总价</strong></em>
                      <strong class="price"><span>￥</span>${sum}</strong>
                    </li>
                  </ul>
                </div>
              </div>
              <button class="btn btn-default" onclick="window.location.href='/chanyan/goods/toAllProduct?username=${user_session.username}'" >继续购物<i class="fa fa-shopping-cart"></i></button>
              <button class="btn btn-primary" type="submit">结算 <i class="fa fa-check"></i></button>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
          <div class="col-md-12 col-sm-12">
            <h2>更多流行商品</h2>
            <div class="owl-carousel owl-carousel4">
              <c:forEach  items="${hotGoodsList}" var="goods" >
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="${goods.path}"   alt="Berry Lace Dress">
                    <div>
                      <a href="${goods.path}" class="btn btn-default fancybox-button">大图</a>
                     <!-- <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">详情</a> -->
                     <a href="/chanyan/goods/toDetail?gname=${goods.gname}" class="btn btn-default fancybox-fast-view">详情</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">${goods.gname}</a></h3>
                  <div class="pi-price">${goods.newprice}</div>
                   <a  class="btn btn-default add2cart" onclick="addCart('${goods.id},${user_session.id},${goods.gname},${goods.newprice},${goods.path},${user_session.id}')">加入购物车</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div>
            </c:forEach>
            </div>
          </div>
        </div>
        <!-- END SIMILAR PRODUCTS -->
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
    <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });
        function delCart(goodsid,userid) {

            var localObj = window.location;
        	var contextPath = localObj.pathname.split("/")[1];
        	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
        	
        	if(userid==""){
                	alert("请先登录！")
                	return false;
                }else{
                	if (!confirm("确认要删除？")) {
        				return false;
        			} 
                	$.ajax({
                        type:'post',
                        url:'/chanyan/cart/delCart',
                        dataType:"text",//注意使用的是打他dataType，而不是Content-Type
                        //async: true,
                        data:{id:goodsid,userid:userid},
                        success: function(result) {
         			    	 console.log(result);
         			    	if(result =="success") {
         			    		alert("删除成功!")
         			    		location.href="/chanyan/cart/toCart?userid="+userid;
         			      }else{
         			    	 alert("删除失败!");
         			      }
         			    },
                		error: function(result){
                		  alert("失败");
                		}
                    });
                }

		}
        function addCart(data) {
        	var result=data.split(",");
        	var gid = result[0];
        	var userid = result[1];
        	var gname = result[2];
        	var newprice = result[3];
        	var path = result[4];
        	var userid = result[5];
            var localObj = window.location;
        	var contextPath = localObj.pathname.split("/")[1];
        	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
        	
        	if(userid==""){
                	alert("请先登录！")
                	return false;
                }else{
                	$.ajax({
                        type:'post',
                        url:'/chanyan/cart/addCart',
                        dataType:"text",//注意使用的是打他dataType，而不是Content-Type
                        //async: true,
                        data:{id:gid,userid:userid,path:path,newprice:newprice,gname:gname},
                        success: function(result) {
         			    	 console.log(result);
         			    	if(result =="success") {
         			    		alert("加入成功!")  
         			    		location.href="/chanyan/cart/toCart?userid="+userid;
         			      }else if(result=="repeat"){
         			    	 alert("购物车中已存在该商品!");
         			      }else{
         			    	 alert("加入失败!");
         			      }
         			    },
                		error: function(result){
                		  alert("失败");
                		}
                    });
                }

		}
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>