<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html>
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <title>My Account | Metronic Shop UI</title>

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
			                                    <a href="/chanyan/manager/toManager"><i class="icon-lock"></i> 后台管理</a>
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
      </div>
    </div>
    <!-- Header END -->
    
    <div class="main" style="height: 547px">
      <div class="container">
        <ul class="breadcrumb">

            <li class="active">管理员页面</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-3">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix"><a href="/chanyan/manager/toUserList"><i class="fa fa-angle-right"></i>用户管理</a></li>
              <li class="list-group-item clearfix"><a href="/chanyan/manager/toCategory"><i class="fa fa-angle-right"></i>商品类别</a></li>
              <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>订单管理</a></li>
              <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>发布管理</a></li>
              <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>竞价管理</a></li>
              <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>统计分析</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <table class="table table-striped table-bordered table-hover" id="userList" style=" text-align:center;">

									<thead>
										<tr>
											<th width="10%" style="text-align:center;">序号</th>
											<th width="20%" style="text-align:center;">用户名</th>
											<th width="25%" style="text-align:center;">Email</th>
											<th width="18%" style="text-align:center;">电话</th>
											<th width="16%" style="text-align:center;">生日</th>
											<th width="7%" style="text-align:center;">操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${userList}" var="user" varStatus="status" >										
											<%-- <input type="text" id="username" value="${user.username}" style="display: none"> --%>
											<tr class="odd gradeX">
												<td>${status.count} </td>
												<td id="username">${user.username}</td>
												<td>${user.email}</td>
												<td>${user.phone}</td>
												<td>${user.birthday}</td>
												<td><button style="background: none;border-color:black"  onclick="deleteUser('${user.username}')">删除</button></td>
												
											
											</tr>
										</c:forEach>
									</tbody>
								</table>
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

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
        });
        function deleteUser(name){
            var localObj = window.location;
        	var contextPath = localObj.pathname.split("/")[1];
        	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
        	if (!confirm("确认要删除？")) {
                return false;
            }
        	$.ajax({
                type:'post',
                url:'/chanyan/manager/deleteUser',
                dataType:"text",//注意使用的是打他dataType，而不是Content-Type
                data:{username:name},
                success: function(result) {
 			    	 console.log(result);
 			    	if(result =="success") {
 			    		alert("删除成功")
 			    	   location.href = "/chanyan/manager/toUserList"; 
 			      }else{
 			    	   alert("删除失败");
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