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
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <title>Men category | Metronic Shop UI</title>

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
        <a class="site-logo" href="/chanyan/user/toIndexDoor"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          
          <i class="fa fa-shopping-cart"></i>
                        
          <div class="top-cart-content-wrapper">
            <div class="top-cart-content">
              <ul class="scroller" style="height: 250px;">
                <c:forEach items="${cart}" var="cart">
                <li>
                  <a href="shop-item.html"><img src="${cart.path}" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <strong><a href="shop-item.html">${cart.gname}</a></strong>
                  <em>￥${cart.newprice}</em>
                  <c:set var = "sum"  value="${sum+ cart.newprice }"></c:set>
                  <c:set var = "count"  value="${ count+1}"></c:set>
                  <a class="del-goods" onclick="delCart('${cart.id}','${user_session.id}')">&nbsp;</a>
                </li>
                </c:forEach>
              </ul>
              <div class="text-right">
                <a  class="btn btn-default" onclick="toCart('${user_session.id}')">进入购物车</a>
                <a href="shop-checkout.html" class="btn btn-primary">结算</a>
              </div>
            </div>
          </div>    
          <div class="top-cart-info">
            <a href="javascript:void(0);" class="top-cart-info-count">${count } 件商品</a>
            <a href="javascript:void(0);" class="top-cart-info-value">￥${sum }</a>
          </div>        
        </div>
        <!--END CART -->

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


            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">

                  <div class="input-group">
                    <input type="text" id="searchname" placeholder="Search" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit" onclick="search()">搜索</button>
                    </span>
                  </div>

              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1><span>各种商品</span></h1>
        <em>为你所选</em>
      </div></div>
    </div>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li>所有商品</li>

        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <c:forEach   items="${ctgList}" var="ct" >
              <li class="list-group-item clearfix"><a href="/chanyan/goods/searchCtg?cid=${ct.cid}&username=${user_session.username}"><i class="fa fa-angle-right"></i> ${ct.cname}</a></li>
              </c:forEach>
            </ul>
          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="row list-view-sorting clearfix">
              <div class="col-md-2 col-sm-2 list-view">
                <a href="javascript:;"><i class="fa fa-th-large"></i></a>
                <a href="javascript:;"><i class="fa fa-th-list"></i></a>
              </div>
              <div class="col-md-10 col-sm-10">
                <div class="pull-right">
                  <label class="control-label">Show:</label>
                  <select class="form-control input-sm">
                    <option value="#?limit=24" selected="selected">24</option>
                    <option value="#?limit=25">25</option>
                    <option value="#?limit=50">50</option>
                    <option value="#?limit=75">75</option>
                    <option value="#?limit=100">100</option>
                  </select>
                </div>
                <div class="pull-right">
                  <label class="control-label">Sort&nbsp;By:</label>
                  <select class="form-control input-sm">
                    <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                    <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                    <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                    <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                    <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                    <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                    <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                    <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                    <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <c:forEach   items="${goodsList}" var="goods">
              <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="${goods.path}" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="${goods.path}" class="btn btn-default fancybox-button">大图</a>
                      <a onclick="toDetail('${goods.gid}','${user_session.id}')" class="btn btn-default fancybox-fast-view">详情</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.html">${goods.gname}</a></h3>
                  <div class="pi-price">${goods.price}</div>
                  <a class="btn btn-default add2cart"  onclick="addCart('${goods.gid},${user_session.id},${goods.gname},${goods.newprice},${goods.path}')">加入购物车</a>
                </div>
              </div>
              </c:forEach>
              <!-- PRODUCT ITEM END -->

            </div>
            <!-- END PRODUCT LIST -->
            <!-- BEGIN PAGINATOR -->
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info">Items 1 to 6 of 10 total</div>
              <div class="col-md-8 col-sm-8">
                <ul class="pagination pull-right">
                  <li><a href="javascript:;">&laquo;</a></li>
                  <li><a href="javascript:;">1</a></li>
                  <li><span>2</span></li>
                  <li><a href="javascript:;">3</a></li>
                  <li><a href="javascript:;">4</a></li>
                  <li><a href="javascript:;">5</a></li>
                  <li><a href="javascript:;">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- END PAGINATOR -->
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
                  <h1>Cool green dress with red bell</h1>
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
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
Nostrud duis molestie at dolore.</p>
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
        function search(){
            var name =$("#searchname").val();//#是id选择器
            var localObj = window.location;
        	var contextPath = localObj.pathname.split("/")[1];
        	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;

            if(name==""){
                alert("用户名不能为空！");
                return false;
            }
            else
            {
            $.ajax({
                type:'post',
                url:'/chanyan/goods/searchGoods',
                dataType:"json",//注意使用的是打他dataType，而不是Content-Type
                //async: true,
                data:{name:name},
                success:function(data){
                	if(data==''){
                       alert("没有搜索到相关商品")
                   }
                   else{
                       alert("搜索完成")
                       /* window.location.href ="index"; */
                       location.href = basePath+"/goods/toSearch?name="+name; 
                   }
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
                        data:{gid:gid,userid:userid,path:path,newprice:newprice,gname:gname},
                        success: function(result) {
         			    	 console.log(result);
         			    	if(result =="success") {
         			    		alert("加入成功!")  
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
        function toDetail(gid,id) {
        	if(id==""){
				location.href="/chanyan/goods/toDetail?gid="+gid;
			}else{
				location.href="/chanyan/goods/toDetail?gid="+gid+"&id="+id
			}
		}
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>