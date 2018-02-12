<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Real Estate</title>

<!-- Bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../lib/animate.css" rel="stylesheet">
<link href="../lib/selectric/selectric.css" rel="stylesheet">
<link href="../lib/swiper/css/swiper.min.css" rel="stylesheet">
<link href="../lib/aos/aos.css" rel="stylesheet">
<link rel="stylesheet" href="../lib/photoswipe/photoswipe.css"> 
<link rel="stylesheet" href="../lib/photoswipe/default-skin/default-skin.css">
<link href="../css/style.css" rel="stylesheet">
<link href="../css/notice2.css" rel="stylesheet">


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
<title>Insert title here</title>
</head>
<body>
<!-- 게시판 시작 -->
<!-- 글수 0 -->
<div class="list_view_content">
	
<div id="content" class="content_mall" tabindex="0">
<h2 style=text-align:center;>공지사항</h2>
	<div class="view_layout">
		<div class="notice_bbs">

			<!-- list_view_wrapper -->
			<div class="list_view_wrapper">
				<!-- search form -->
				
					<fieldset>
						<legend style=visibility:hidden;>검색</legend>
						<div class="search_area">
							<select name="searchType" id="searchType" title="검색어 유형 선택">
								<option value="" selected="selected">전체</option>
								<option value="T">제목</option>
								<option value="C">내용</option>
								<option value="S">매장명</option>
							</select>
							<input type="text" name="searchWord" id="searchWord" class="searchword" value="" placeholder="검색어를 입력하세요" title="검색어를 입력하세요">
							<button class="submit">검색<span class="m_txt">하기</span></button>
						</div>
</fieldset>

<div style="float:right;">
목록(전체 글:${count})</div>
				


							
							
													<div class="list_view_content">
													<div class="header_group">
							<ul class="header_group clfix">
								<li class="table_header cell01">번호</li>
								<li class="table_header cell02">제목</li>
								<li class="table_header cell03">게시일자</li>
								<li class="table_header cell04">조회수</li>
								<li class="table_header cell05">직원명</li>
								<li class="table_header cell06">직원번호</li>
							</ul>
							</div>
							</div>
 
							 
  <c:forEach var="article" items="${articleList}">
  <div class="list_view_content">
  <div class="row_group">
  
		<ul class="row_group clfix">
							 								
		  <li class="cell01"><!-- 번호 -->
									<c:out value="${number}"/>
  <c:set var="number" value="${number - 1}"/></li>
									<li class="cell02"><!-- 제목 -->
									<a href="">
          ${article.bTitle}</a>
          <c:if test="${article.bViewCnt >= 20}"></c:if></li>
									<li class="cell03"><!-- 게시일자 -->
									<span>${article.postDate}</span></li>
									<li class="cell04"><!-- 조회수 -->
									<span>${article.bViewCnt}</span></li>
									<li class="cell05"><!-- 직원명 -->
									<span>${article.empNm}</span></li>
									<li class="cell06"><!-- 직원번호 -->
									<span>${article.empNo}</span></li>
								</ul>
								</div>
								</div>
 							 </c:forEach>
 							 <ul>
    <li >
  <c:out value="${number}"/>
  <c:set var="number" value="${number - 1}"/>
</li>
    <li  >

          
      <a href="/Project_bbs/listo/notice/Content.do?bNo=${article.bNo}&pageNum=${currentPage}">
          ${article.subject}</a>
          <c:if test="${article.bviewcnt >= 20}">
            <img src="images/hot.gif" border="0"  height="16"></li>
            </ul></c:if>

						
							
								
								
													<div style="float:right;" >
<a href="/Project_bbs/listo/notice/writeForm.do">글쓰기</a>
</div>
<div class="pagenate_area">
							<ul class="pagenate">
								
									<li><a href="?pageIndex=1" onclick="linkPage(1);return false; " class="ctrl"><img src="../img/page/btn_list_first.gif" alt="처음 페이지로 이동"></a></li><li><a href="?pageIndex=1" onclick="linkPage(1);return false; " class="ctrl prev"><img src="../img/page/btn_list_prev.gif" alt="이전 페이지로 이동"></a></li><li><strong title="현재 1페이지">1</strong></li><li><a href="?pageIndex=2" onclick="linkPage(2);return false; " title="2페이지로 이동">2</a></li><li><a href="?pageIndex=3" onclick="linkPage(3);return false; " title="3페이지로 이동">3</a></li><li><a href="?pageIndex=4" onclick="linkPage(4);return false; " title="4페이지로 이동">4</a></li><li><a href="?pageIndex=5" onclick="linkPage(5);return false; " title="5페이지로 이동">5</a></li><li><a href="?pageIndex=6" onclick="linkPage(6);return false; " class="ctrl next"><img src="../img/page/btn_list_next.gif" alt="다음 페이지로 이동"></a></li><li><a href="?pageIndex=8" onclick="linkPage(8);return false; " class="ctrl last"><img src="../img/page/btn_list_last.gif" alt="마지막 페이지로 이동"></a></li>

								
							</ul>

			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
				</div>
				</div>
				</div>
</body>
</html>