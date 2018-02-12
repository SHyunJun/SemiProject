<!DOCTYPE html>
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Real Estate</title>

<!-- Bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate.css" rel="stylesheet">
<link href="lib/selectric/selectric.css" rel="stylesheet">
<link href="lib/swiper/css/swiper.min.css" rel="stylesheet">
<link href="lib/aos/aos.css" rel="stylesheet">
<link rel="stylesheet" href="lib/photoswipe/photoswipe.css"> 
<link rel="stylesheet" href="lib/photoswipe/default-skin/default-skin.css">
<link href="css/style.css" rel="stylesheet">


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="lib/jquery-3.2.1.min.js"></script>
<script src="lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/selectric/jquery.selectric.js"></script>
<script src="lib/swiper/js/swiper.min.js"></script>
<script src="lib/aos/aos.js"></script>
<script src="lib/photoswipe/photoswipe.min.js"></script>
<script src="lib/photoswipe/photoswipe-ui-default.min.js"></script>
<script src="lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script src="lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="lib/lib.js"></script>

<style>
/* list_view */

.notice_bbs .list_view_wrapper{position:relative;padding:0 0px; }
.notice_bbs .list_view_wrapper li{list-style: none; }
.notice_bbs .list_view_content{margin:25px 0px 30px 0px;border-top:1px solid #837266;letter-spacing:-1px;}
.notice_bbs .list_view_content .header_group{width:100%;height:43px;max-width:1200px;line-height:43px;border-bottom:1px solid #c9c9c9;background: #f2f0ef;margin-left: auto;margin-right: auto;margin-bottom: 15px;}
.notice_bbs .list_view_content .row_group{width:100%;height:43px;line-height:43px;border-bottom:1px solid #d3d3d3;}
.notice_bbs .list_view_content .header_group li{float: left; text-align:center; font-weight:bold; color:#222222; font-size: 14px;}
.notice_bbs .list_view_content .row_group li{float: left;text-align:center;}
.notice_bbs .list_view_content .row_group li.cell02{float: left;text-align:left;text-indent: 25px}
.notice_bbs .list_view_content .cell01{width:5%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;}
.notice_bbs .list_view_content .cell02{width:57%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;}
.notice_bbs .list_view_content .cell03{width:5%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;letter-spacing:0px}
.notice_bbs .list_view_content .cell04{width:15%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;}
.notice_bbs .list_view_content .cell05{width:8%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;}
.notice_bbs .list_view_content .cell06{width:10%;overflow: hidden; white-space: nowrap; text-overflow: ellipsis;}
.notice_bbs .write{width:100%;height:43px;max-width:1200px;}

.search_area{text-align:center;width:100%;max-width:1200px;margin-left: auto;margin-right: auto;margin-bottom: 15px;}
.search_area select{width:54px;height:24px;#height:auto;padding:10px 0 9px 0;line-height:32px;border:2px solid #d3d3d3;font-family:"Malgun Gothic","맑은 고딕";color:#555555;}
.search_area .placeholder_guidetext{padding-left:10px !important;}
.search_area .searchword{width:307px;height:16px;margin:0 1px;padding:10px 0 10px 10px;color:#696969;border:2px solid #d3d3d3;vertical-align:top;#vertical-align:middle;font-family:"Malgun Gothic","맑은 고딕";color:#555555}
.search_area .submit{display:inline-block;padding:12px 14px 14px 14px;line-height:1px;background-color:#252d33;color:#ffffff !important;font-size:13px !important;font-weight:normal;text-align:center;border:0;white-space:nowrap;vertical-align:top;text-decoration:none !important;font-weight:bold}

/* paginate */
.pagenate_area{display:block;width:600px;height:27px;margin:0 auto;text-align:center;*margin-top:16px}

.pagenate{display:inline-block;height:27px;*width:308px}
.pagenate li{text-align:center;float:left; list-style: none; }
.pagenate a,
.pagenate strong{display:inline-block;margin:0px 5px 0px 0px;padding:3px 9px 4px 9px;background-color:#fff;border:1px solid #d3d3d3;color:#696969;font-size:14px;font-family:tahoma;}
.pagenate a:hover,
.pagenate a:focus,
.pagenate a:active,
.pagenate a:hover {background-color:#eeeeee!important;text-decoration:underline;}
.pagenate img{vertical-align:middle}
.pagenate strong {border:1px solid #252d33;background-color:#252d33;color:#fff;}
.pagenate .ctrl{display:inline-block;padding:0px;border:0;font-family:tahoma;vertical-align:top}
.pagenate .prev{margin:0 15px 0 0px}
.pagenate .next{margin:0 5px 0 10px}
.pagenate .last{margin:0}

</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="main">
<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
  <div class="container">
  <a class="navbar-brand" href="index.html"><span class="icon-uilove-realestate"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-content" aria-controls="menu-content" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="menu-content">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Home <span class="sr-only">(current)</span>
        </a>
        <div class="dropdown-menu">
            <a href="index.html" class="dropdown-item">Homepage 1</a>
            <a href="index2.html" class="dropdown-item">Homepage 2</a>
            <a href="index3.html" class="dropdown-item">Homepage 3</a>
            <a href="index4.html" class="dropdown-item">Homepage 4</a>
            <a href="index5.html" class="dropdown-item">Homepage 5</a>
            <a href="index6.html" class="dropdown-item">Homepage 6</a>
            <a href="index7.html" class="dropdown-item">Homepage 7</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Listings
        </a>
        <div class="dropdown-menu">
            <a href="property_listing.html" class="dropdown-item">List View</a>
            <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Agents
        </a>
        <div class="dropdown-menu">
            <a href="agent_list.html" class="dropdown-item">Agent List</a>
            <a href="agent.html" class="dropdown-item">Agent Profile</a>
        </div>
      </li>
      
      <li class="nav-item dropdown megamenu">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pages
        </a>
        <div class="dropdown-menu">
        <div class="container">
        <div class="row justify-content-md-center">
            <div class="col col-md-8">
            <div class="row">
            <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Homepage</li>
                  <li><a href="index.html">Homepage 1</a></li>
                  <li><a href="index2.html">Homepage 2</a></li>
                  <li><a href="index3.html">Homepage 3</a></li>
                  <li><a href="index4.html">Homepage 4</a></li>
                  <li><a href="index5.html">Homepage 5</a></li>
                  <li><a href="index6.html">Homepage 6</a></li>
                  <li><a href="index7.html">Homepage 7</a></li>
                  <li class="title">Login Pages</li>
                  <li><a href="signin.html">Signin</a></li>
                  <li><a href="register.html">Register</a></li>
                  <li><a href="forgot-password.html">Forgot Password</a></li>
                 </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Property Listing</li>
                  <li><a href="property_listing.html">List View</a></li>
                  <li><a href="property_grid.html">Grid View</a></li>
                  <li><a href="property_listing_map.html">Map View</a></li>
                  <li class="title">Single Property</li>
                  <li><a href="property_single.html">Single View 1</a></li>
                  <li><a href="property_single2.html">Single View 2</a></li>
                  <li><a href="property_single3.html">Single View 3</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Other Pages</li>
                  <li><a href="plans.html">Plans</a></li>
                  <li><a href="information_page.html">Information Page</a></li>
                  <li><a href="coming_soon.html">Coming Soon</a></li>
                  <li><a href="404_error.html">Error Page</a></li>
                  <li><a href="success.html">Success Page</a></li>
                  <li><a href="contact.html">Contact Page</a></li>
                  <li><a href="compare.html">Compare Properties</a></li>
                  <li class="title">Agent Pages</li>
                  <li><a href="agent_list.html">Agent List</a></li>
                  <li><a href="agent.html">Agent Profile</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Account Pages</li>
                  <li><a href="my_listing_add.html">Add Listing</a></li>
                <li><a href="my_bookmarked_listings.html">Bookmarked Listing</a></li>
                  <li><a href="my_listings.html">My Listings</a></li>
                  <li><a href="my_profile.html">My Profile</a></li>
                <li><a href="my_password.html">Change Password</a></li>
                <li><a href="my_notifications.html">Notifications</a></li>
                <li><a href="my_membership.html">Membership</a></li>
                <li><a href="my_payments.html">Payments</a></li>
                <li><a href="my_account.html">Account</a></li>
                <li class="title">Blog Pages</li>
                  <li><a href="blog.html">Blog Archive</a></li>
                  <li><a href="blog_single.html">Blog Single</a></li>
                </ul>
              </div>
              </div>
              </div>
              </div>
              </div>
        </div>
      </li>
      
    </ul>
    
    <ul class="navbar-nav ml-auto">
      
      
      <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> Hi, John
        </a>
        <div class="dropdown-menu">
            <a href="my_profile.html" class="dropdown-item">My Profile</a>
            <a href="my_password.html" class="dropdown-item">Change Password</a>
            <a href="my_notifications.html" class="dropdown-item">Notifications</a>
            <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a>
            <a href="my_account.html" class="dropdown-item">Account</a>
        </div>
      </li>
      <li class="nav-item add-listing"><a class="nav-link" href="my_listing_add.html"><span><i class="fa fa-plus" aria-hidden="true"></i> Add listing</span></a></li>
    </ul>
    
  </div>
  </div>
</nav>

<!-- 공지사항 -->
<div class="notice_bbs">

			<!-- list_view_wrapper -->

			<div class="list_view_wrapper">
				<!-- 검색 폼 -->
				<form name="searchForm" id="searchForm" method="get" action="/customer/notice_bbs/list.do" onsubmit="return fncSearch();">
					<fieldset>
						<legend>검색</legend>
						<div class="search_area">
							<select name="searchType" id="searchType" title="검색어 유형 선택">
								<option value="" selected="selected">전체</option>
								<option value="T">제목</option>
								<option value="C">내용</option>
								<option value="S">출처</option>
							</select>
							<input type="text" name="searchWord" id="searchWord" class="searchword" value="" placeholder="검색어를 입력하세요" title="검색어를 입력하세요">
							<button class="submit">검색<span class="m_txt">하기</span></button>
						</div>
					</fieldset>
					<input type="hidden" name="notice_bbs_no" id="notice_bbs_no" value="0">
					<input type="hidden" name="listType" id="listType" value="List">
					<input type="hidden" name="pageIndex" value="1">
				</form>

				
				
				
					
					
						<!-- 게시판 시작 -->
						<div class="list_view_content">
							<ul class="header_group clfix">
								<li class="table_header cell01">번호</li>
								<li class="table_header cell02">제목</li>
								<li class="table_header cell03">구분</li>
								<li class="table_header cell04">등록일</li>
								<li class="table_header cell05">조회수</li>
								<li class="table_header cell06">출처</li>
							</ul>
							<div class="write">
  <ul>
    <li bgcolor="${value_c}">
       <a href="/MVC_board/MVC/writeForm.do">글쓰기</a>
    </li>
  </ul>
</table>
		
							
		
						</div>
						<!-- list_view_content -->
						<!-- pagenate  -->
						<div class="pagenate_area">
							<ul class="pagenate">
								
									<li><a href="?pageIndex=1" onclick="linkPage(1);return false; " class="ctrl"><img src='img/page/btn_list_first.gif' alt="처음 페이지로 이동"></a></li><li><a href="?pageIndex=1" onclick="linkPage(1);return false; " class="ctrl prev"><img src="img/page/btn_list_prev.gif" alt="이전 페이지로 이동"></a></li><li><strong title="현재 1페이지">1</strong></li><li><a href="?pageIndex=2" onclick="linkPage(2);return false; " title="2페이지로 이동">2</a></li><li><a href="?pageIndex=3" onclick="linkPage(3);return false; " title="3페이지로 이동">3</a></li><li><a href="?pageIndex=4" onclick="linkPage(4);return false; " title="4페이지로 이동">4</a></li><li><a href="?pageIndex=5" onclick="linkPage(5);return false; " title="5페이지로 이동">5</a></li><li><a href="?pageIndex=6" onclick="linkPage(6);return false; " class="ctrl next"><img src="img/page/btn_list_next.gif" alt="다음 페이지로 이동"></a></li><li><a href="?pageIndex=8" onclick="linkPage(8);return false; " class="ctrl last"><img src="img/page/btn_list_last.gif" alt="마지막 페이지로 이동"></a></li>

								
							</ul>
						</div>
						<!-- pagenate  -->
					
				

			</div>
		</div>
	</div>

<br>


<!-- Email to friend Modal -->
<div class="modal fade item-badge-rightm" id="email-to-friend" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="media">
          <div class="media-left"> <img src="img/demo/property/thumb/1.jpg" width="60" class="img-rounded mt5" alt=""> </div>
          <div class="media-body">
            <h4 class="media-heading">Email friend about 2 bed semi-detached bungalow for sale</h4>
            Kents Lane, Bungay NR35 </div>
        </div>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Your Name</label>
            <input type="text" class="form-control" placeholder="Your Name">
          </div>
          <div class="form-group">
            <label>Your Email</label>
            <input type="email" class="form-control" placeholder="Your Email">
          </div>
          <div class="form-group">
            <label>Friends Email</label>
            <input type="email" class="form-control" placeholder="Friends Email">
          </div>
          <div class="form-group">
            <label>Message</label>
            <textarea rows="4" class="form-control" placeholder="">I thought you might want to take a look at this property for sale.</textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Request Details</button>
      </div>
    </div>
  </div>
</div>

<!-- Report Listing Modal -->
<div class="modal fade item-badge-rightm" id="report-listing" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="media">
          <div class="media-left"> <i class="fa fa-3x fa-exclamation-circle" aria-hidden="true"></i> </div>
          <div class="media-body">
            <h4 class="media-heading">Report Listing for 2 bed semi-detached bungalow for sale</h4>
            Kents Lane, Bungay NR35 </div>
        </div>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Contact Name</label>
            <input type="text" class="form-control" placeholder="Contact Name">
          </div>
          <div class="form-group">
            <label>Email Address</label>
            <input type="email" class="form-control" placeholder="Email Address">
          </div>
          <div class="form-group">
            <label>Nature of report</label>
            <select class="form-control">
              <option value="">Please Select</option>
              <option value="no_longer_available">Property is no longer available</option>
              <option value="incorrect_price">Price listed is incorrect</option>
              <option value="incorrect_last_sold_price">Last sold price incorrect</option>
              <option value="incorrect_description">Property description is inaccurate</option>
              <option value="incorrect_location">Property location is incorrect</option>
              <option value="incorrect_content">Problem with photos, floorplans, etc.</option>
              <option value="inappropriate_video">Problem with the video</option>
              <option value="agent_not_contactable">Agent is not contactable</option>
              <option value="incorrect_running_costs">Running costs is displaying inaccurate values</option>
              <option value="other">Other (please specify)</option>
            </select>
          </div>
          <div class="form-group">
            <label>Description of content issue </label>
            <textarea rows="4" class="form-control" placeholder="Please provide as much information as possible..."></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Report Error</button>
      </div>
    </div>
  </div>
</div>
<button class="btn btn-primary btn-circle" id="to-top"><i class="fa fa-angle-up"></i></button>
<footer id="footer">
  <div class="container">
    <div class="row justify-content-md-center">
          <div class="col col-md-10">
        <div class="row">
          <div class="col-md-4 col-sm-4">
            <p><span class="icon-uilove-realestate"></span></p>
            <address>
            <strong>Twitter, Inc.</strong><br>
            1355 Market Street, Suite 900<br>
            San Francisco, CA 94103<br>
            <abbr title="Phone">P:</abbr> (123) 456-7890
            </address>
            <p class="text-muted">Copyright &copy; 2016<br />
              All rights reserved</p>
          </div>
          <div class="col-md-2  col-sm-4">
            <ul class="list-unstyled">
              <li><a href="#">About</a></li>
              <li><a href="#">Team</a></li>
              <li><a href="#">Security</a></li>
              <li><a href="#">Plans</a></li>
            </ul>
          </div>
          <div class="col-md-2 col-sm-4">
            <ul class="list-unstyled">
              <li><a href="#">For Rent</a></li>
              <li><a href="#">For Sale</a></li>
              <li><a href="#">Commercial</a></li>
              <li><a href="#">Agents</a></li>
              <li><a href="#">Property Guides</a></li>
              <li><a href="#">Jobs</a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-12">
            <div class="social-sharebox"> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-google"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-youtube-play"></i></a> <a href="#"><i class="fa fa-pinterest"></i></a> </div>
            <form>
              <h4>Subscribe Newsletter</h4>
              <div class="input-group input-group-lg">
                <input type="email" class="form-control" placeholder="Email Address">
                <span class="input-group-btn">
                <button class="btn btn-primary" type="button">Go!</button>
                </span> </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- Root element of PhotoSwipe. Must have class pswp. -->
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

    <!-- Background of PhotoSwipe. 
         It's a separate element, as animating opacity is faster than rgba(). -->
    <div class="pswp__bg"></div>

    <!-- Slides wrapper with overflow:hidden. -->
    <div class="pswp__scroll-wrap">

        <!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
        <!-- don't modify these 3 pswp__item elements, data is added later on. -->
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>

        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
        <div class="pswp__ui pswp__ui--hidden">

            <div class="pswp__top-bar">

                <!--  Controls are self-explanatory. Order can be changed. -->

                <div class="pswp__counter"></div>

                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                <button class="pswp__button pswp__button--share" title="Share"></button>

                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                <!-- Preloader demo https://codepen.io/dimsemenov/pen/yyBWoR -->
                <!-- element will get class pswp__preloader--active when preloader is running -->
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                      <div class="pswp__preloader__cut">
                        <div class="pswp__preloader__donut"></div>
                      </div>
                    </div>
                </div>
            </div>

            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div> 
            </div>

            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>

            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>

            <div class="pswp__caption">
                <div class="pswp__caption__center"></div>
            </div>

          </div>

        </div>

</div>

</body>
</html>