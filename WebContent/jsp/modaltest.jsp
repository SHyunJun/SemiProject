<%@ page contentType="text/html; charset=UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate.css" rel="stylesheet">
<link href="lib/selectric/selectric.css" rel="stylesheet">
<link href="lib/swiper/css/swiper.min.css" rel="stylesheet">
<link href="lib/aos/aos.css" rel="stylesheet">
<link href="lib/Magnific-Popup/magnific-popup.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="lib/jquery-3.2.1.min.js"></script>
<script src="lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/selectric/jquery.selectric.js"></script>
<script src="lib/swiper/js/swiper.min.js"></script>
<script src="lib/aos/aos.js"></script>
<script src="lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script src="lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="lib/lib.js"></script>    
<!DOCTYPE html>
<html>
<head>
<style>
.modal-dialog.modal-fullsize {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-fullsize {
  height: auto;
  min-height: 100%;
  border-radius: 0;
}

</style>


<title>Insert title here</title>
</head>
<body>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myFullsizeModal">
  Fullsize Modal
</button>
<!-- Fullsize Modal -->
<div class="modal fade" id="myFullsizeModal" tabindex="-1" role="dialog" aria-labelledby="myFullsizeModalLabel">
  <div class="modal-dialog modal-fullsize" role="document">
    <div class="modal-content modal-fullsize">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">전지 Modal</h4>
      </div>
      <div class="modal-body">
        화면을 가득 채우므로 가장자리가 각져있습니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>




