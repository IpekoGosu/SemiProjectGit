<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="공연 뉴스 검색" name="title"/>
    </jsp:include>

<html>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원 가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script>
      function checkcount(obj){
        var box = document.getElementsByName("loginFavoriteGenre");
        var count = 0;
        for (var i = 0; i < box.length; i++){
          if (box[i].checked){
            count++;
          }
        }
        if (count > 3){
          obj.checked = false;
        }
      }
    </script>
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap');
      .donglefont{
        font-family: 'Dongle';
      }
      @font-face {
        font-family: 'GmarketSansMedium';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }
      .gmarketfontM{
        font-family: 'GmarketSansMedium';
      }
      .stylishfont{
        font-family: 'Stylish';
      }
      .gdodumfont{
        font-family: 'Gowun Dodum';
      }
      .btn-secondary {
        background-color: #ef4562 !important;
        border-color: #ef4562 !important;
      }
      .btn-primary{
        background-color: #FEE500 !important;
        border-color: black;
        color: black !important;
      }
    </style>
    
  </head>
  <body style="padding-top: 72px">
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-4"><img class="img-fluid mb-4" src="${path}/resources/img/yja/myseoullogo.png" alt="${path}/resources." style="max-width: 6rem;">
              <h2 class="gmarketfontM">회원가입</h2>
            </div>
            <form class="form-validate" name="enrollform" action="${path}/member/enroll" method="post">
              <div class="mb-4">
                <label class="form-label" for="id"> 아이디</label>
                <input class="form-control" name="id" id="id" type="text" placeholder="awesomeId" autocomplete="off" required data-msg="아이디를 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="이메일를 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="password"> 비밀번호</label>
                <input class="form-control" name="password" id="password" placeholder="Password" type="password" required data-msg="비밀번호를 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="password2"> 비밀번호 확인</label>
                <input class="form-control" name="password2" id="password2" placeholder="Password" type="password" required data-msg="비밀번호를 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="name"> 닉네임</label>
                <input class="form-control" name="name" id="name" type="text" placeholder="fancyNickname" autocomplete="off" required data-msg="닉네임을 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="phone"> 전화번호</label>
                <input class="form-control" name="phone" id="phone" type="text" placeholder="010-1234-5678" autocomplete="off" required data-msg="전화번호를 입력하세요">
              </div>
              <div class="form-label"> 주소</div>
              <div class="row mb-4">
                <div class="col-sm-6">
                  <select class="form-select" name="loginAddressSeoul" id="loginAdressSeoul">
                    <option value="서울시" selected>서울특별시</option>
                  </select>
                </div>
                <div class="col-sm-6">
                  <select class="form-select" name="address" id="address" autocomplete="off"></select>
                  <input type="hidden" name="addressCodePrf" id="addressCodePrf" value="11230">
                  <input type="hidden" name="addressCodeTour" id="addressCodeTour" value="1">
                </div>
              </div>
              <div class="mb-4">
                <div class="form-label">공연 선호장르 (3가지)</div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre1" type="checkbox" value="연극" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre1"> 연극</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre2" type="checkbox" value="무용" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre2"> 무용</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre3" type="checkbox" value="클래식" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre3"> 클래식</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre4" type="checkbox" value="국악" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre4"> 국악</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre5" type="checkbox" value="음악" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre5"> 음악</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre6" type="checkbox" value="서커스/마술" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre6"> 서커스/마술</label>
                </div>
                <div class="form-check-inline">
                  <input class="form-check-input" name="favoriteGenre" id="loginFavoriteGenre7" type="checkbox" value="뮤지컬" onclick="checkcount(this);">
                  <label class="form-check-label" for="loginFavoriteGenre7"> 뮤지컬</label>
                </div>
              </div>
              <div class="d-grid gap-2">
                <button id="enrollsubmit" class="btn btn-lg btn-secondary" style="font-size: 14pt;">가입하기</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
              <div class="d-grid gap-2">
                <button class="btn btn-lg btn-primary">
                  <img src="${path}/resources/img/myImages/kakotalk.png" alt="" width="30" style="position: relative; left: -50pt;">
                  <span class="" style="text-align: center; font-size: 14pt;">카카오톡 회원가입</span>
                </button>
              </div>
            </form><a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.html"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg></a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${path}/resources/img/myImages/loginBackground.jpg);"></div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    
    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>

    <script>
    $(function (){
      var area1 = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"];
      var area2 = [11230, 11250, 11090, 11160, 11210, 11050, 11170, 11180, 11110, 11100, 11060, 11200, 11140, 11130, 11220, 11040, 11080, 11240, 11150, 11190, 11030, 11120, 11010, 11020, 11070];
      var area3 = [1, 2, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25];

      $('select[name=address]').each(function(){
        $selgu = $(this);
        $.each(eval(area1), function(){
          $selgu.append("<option value='"+this+"'>"+this+"</option>");
        });
      });

      $('select[name=address]').change(function(){
        var seladd = $(this).val();
        console.log(seladd);
        var num = area1.indexOf(seladd);
        var codeprf = area2[num];
        var codetour = area3[num];

        $('#addressCodePrf').val(codeprf);
        $('#addressCodeTour').val(codetour);
        console.log("공연 지역코드 : " + $('#addressCodePrf').val());
        console.log("관광 지역코드 : " + $('#addressCodeTour').val());
      });
      
      $('#enrollsubmit').click(function(){
    	  enrollform.submit();
      });
      
    });    
 	</script>
    


  </body>
  
  


</html>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

