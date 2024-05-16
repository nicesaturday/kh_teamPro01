<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<header id="hd">

   <div id="hd_main_wrap">
       <div class="logo"><a href="${hpath }" >GO JEONJU.</a>
       </div>
       <nav id="gnb">
           <ul class="menu">
               <li class="item">
                   <a href="#" class="dp1">전주여행</a>
                   <ul class="submenu">
                       <li><a href="">주요명소</a></li>
                       <li><a href="">문화시설</a></li>
                       <li><a href="${hpath }/festival_list">대표축제</a></li>
                   </ul>
               </li>
               
               <li class="item">
                   <a href="#" class="dp1">숙박·쇼핑</a>
                   <ul class="submenu">
                       <li><a href="">숙박</a></li>
                       <li><a href="${hpath }/shopping">전통시장</a></li>
                       <li><a href="${hpath }/cheongnyeon_mall">청년몰</a></li>
                   </ul>
               </li>
               <li class="item">
                   <a href="#" class="dp1">여행도우미</a>
                   <ul class="submenu">
                       <li><a href="${hpath }/map">관광지도</a></li>
                       <li><a href="${hpath }/traffic">대중교통 정보</a></li>
                       <li><a href="${hpath }/tour_guide">관광가이드 예약</a></li>
                   </ul>
               </li>
               <li class="item">
                   <a href="" class="dp1">마이페이지</a>
                   <ul class="submenu">
                       <li><a href="${hpath }/login">로그인</a></li>
                       <li><a href="${hpath }/join_term">회원가입</a></li>
                       <li><a href="${hpath }/">예약확인</a></li>
                       <li><a href="${hpath }/term">이용약관</a></li>
                       <li><a href="${hpath }/term">개인정보 처리방침</a></li>
                   </ul>
               </li>
               <li class="item">
                   <a href="" class="dp1">공지사항</a>
                   <ul class="submenu">
                       <li><a href="">공지사항</a></li>
                       <li><a href="">QnA</a></li>
                   </ul>
               </li>
           </ul>
       </nav>
       <div class="tnb">
       
           <div><a href="${hpath }/login">로그인</a></div>
           
           
           <div><a href="" class="fe--bar"></a></div>
       </div>
   </div>
</header>

 <script>
   
   var gnb = document.getElementById('gnb');

   
   gnb.addEventListener('mouseover', function() {
       
       document.querySelector('#hd_main_wrap').classList.add('header-hover');
   });

   
   gnb.addEventListener('mouseout', function() {
       
       document.querySelector('#hd_main_wrap').classList.remove('header-hover');
   });
</script>