<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자화면</title>

<!-- Bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate.css" rel="stylesheet">
<link href="lib/selectric/selectric.css" rel="stylesheet">
<link href="lib/aos/aos.css" rel="stylesheet">
<link href="lib/Magnific-Popup/magnific-popup.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="lib/jquery-3.2.1.min.js"></script>
<script src="lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/selectric/jquery.selectric.js"></script>
<script src="lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script src="lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="lib/tinymce/tinymce.min.js"></script>
<script src="lib/aos/aos.js"></script>
<script src="lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="lib/lib.js"></script>
<script>
var placeSearch, autocomplete;
var componentForm = {
	//street_number: 'short_name',
	//route: 'long_name',
	locality: 'long_name',
	administrative_area_level_1: 'long_name',
	country: 'long_name',
	postal_code: 'long_name'
};

function initAutocomplete() {
	autocomplete = new google.maps.places.Autocomplete((document.getElementById('autocomplete')), {types: ['geocode']});
	autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
	var place = autocomplete.getPlace();
	for (var component in componentForm) {
		document.getElementById(component).value = '';
		document.getElementById(component).disabled = false;
	}
	
	for (var i = 0; i < place.address_components.length; i++) {
		var addressType = place.address_components[i].types[0];
		if (componentForm[addressType]) {
			var val = place.address_components[i][componentForm[addressType]];
			document.getElementById(addressType).value = val;
		}
	}
}
</script> 
<script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete" async defer></script> 
<script>
	tinymce.init({
		selector: '.text-editor',
		height: 200,
		menubar: false,
		branding: false,
		plugins: [
			'lists link image preview',
		],
		toolbar: 'undo redo | link | formatselect | bold italic underline  | alignleft aligncenter alignright alignjustify | bullist numlist'
	});
        </script>

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
                  <li><a href="my_bookmarked_listings.jsp">우리매장 예약현황</a></li>
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
<div class="clearfix"></div>
<div id="content">
  <div class="container">
    <div class="row justify-content-md-center">
          <div class="col col-lg-12 col-xl-10">
        <div class="row has-sidebar">
          <div class="col-md-5 col-lg-4 col-xl-4">
            <div id="sidebar" class="sidebar-left">
              <div class="sidebar_inner">
                <div class="list-group no-border list-unstyled">
                  <span class="list-group-item heading">Manage Listings</span>
                  <a href="my_listing_add.html" class="list-group-item"><i class="fa fa-fw fa-plus-square-o"></i> Add Listing</a>
                  <a href="my_bookmarked_listings.html" class="list-group-item d-flex justify-content-between align-items-center"><span><i class="fa fa-fw fa-bookmark-o">
                  </i> 우리매장 예약현황 <span>
                    <span class="badge badge-primary badge-pill">10</span>
                    </a>
                  <a href="my_listings.html" class="list-group-item d-flex justify-content-between align-items-center"><span><i class="fa fa-fw fa-bars"></i> My Listings</span>
                    <span class="badge badge-primary badge-pill">7</span>
                    </a>
                  <span class="list-group-item heading">Manage Account</span>
                  <a href="my_profile.html" class="list-group-item active"><i class="fa fa-fw fa-pencil"></i> My Profile</a>
                  <a href="my_password.html" class="list-group-item"><i class="fa fa-fw fa-lock"></i> Change Password</a>
                  <a href="my_notifications.html" class="list-group-item"><i class="fa fa-fw fa-bell-o"></i> Notifications</a>
<a href="my_membership.html" class="list-group-item"><i class="fa fa-fw fa-cubes"></i> Membership</a>
<a href="my_payments.html" class="list-group-item"><i class="fa fa-fw fa-credit-card"></i> Payments</a>
<a href="my_account.html" class="list-group-item"><i class="fa fa-fw fa-cog"></i> Account</a>
                </div>
              </div>
            </div>
          </div>
          
          <!--  매장정보 시작 -->
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1> 매장명(세션으로 받아온다.) <small> 000관리자님 환영합니다(세션으로 받아온다.) </small></h1>
            </div>
            <form action="index.php">
              <h3 class="subheadline"> 매장No. 00000 </h3>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label> 매장명 </label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="강식당">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>업종명</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="양식">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label>매장소개</label>
                <textarea class="form-control form-control-lg text-editor" name="content" rows="10" cols="73" maxlength = 200>
                ${article.content}손님보다 사장이 더 많이 먹는 식당! 마진 0% 리얼 100% 진짜 강식당이 찾아온다!</textarea></td>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>매장연락처</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div>
                <!-- <div class="col-md-6">
                  <div class="form-group">
                    <label>Fax</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div> -->
              </div>
              <div class="form-group">
                <label> 상세페이지 매장설명</label>
                <textarea class="form-control form-control-lg text-editor" placeholder=""></textarea>
              </div>
               <div>
               	<label> 매장 보유테이블 정보 </label>
                <ul class="item-features">
                  <li>  <span>540</span> 2인석 </li>
                  <li>  <span>3</span> 4인석 </li>
                  <li>  <span>1</span> 6인석 </li>
                  <li>  <span>2</span> 단체룸 </li>
                  <li>  <span>있음</span> 아기의자 </li>
                  <li>  <span>있음</span> 놀이방 </li>
                </ul>
               </div>
             <!--  <h3 class="subheadline">Social Links</h3> -->
              <div class="form-group">
                <label>Social Links</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-instagram"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <!-- <div class="form-group">
                <label>Facebook</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-facebook"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <div class="form-group">
                <label>Google Plus</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-google-plus"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <div class="form-group">
                <label>Linkedin</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-linkedin"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div> -->
              <!-- <h3 class="subheadline">Agent/Company Profile</h3>
              <div class="form-group">
                <label>Agent/Company Title</label>
                <input type="text" class="form-control form-control-lg">
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Location</label>
                    <input type="text" class="form-control form-control-lg" id="autocomplete" placeholder="Enter your location">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" class="form-control form-control-lg" placeholder="">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>City</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="locality">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>State</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="administrative_area_level_1">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="country">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Zipcode</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="postal_code">
                  </div>
                </div>
              </div>
              <hr> -->
              <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary">수정취소</button>
                <button type="submit" class="btn btn-lg btn-primary">정보수정</button>
                <button type="submit" class="btn btn-lg btn-primary">미리보기</button>
              </div>
            </form>
          </div>
        </div>
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
                <input type="email" class="form-control form-control-lg" placeholder="Email Address">
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
</div>
</body>
</html>