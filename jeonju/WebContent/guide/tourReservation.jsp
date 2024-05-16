<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.jeonju.dto.guide.Tourism"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투어 예약</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after"/>
<style>
#content {width: 100%;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134); text-align: center; }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page_head { display: block; width: 1200px; }
.imgwrap {width: 100vw; min-width: 1200px; overflow: hidden; height: 400px; position: relative; 
    border-top: 1px solid #f2522e; border-bottom: 1px solid #f2522e;}
.page_head img {position: absolute; width: 100%;  top:-600px; filter: brightness(90%); min-width: 2000px;}
.page_head p { position: absolute; left: 30px; top: 500px; z-index: 999; color: #fff; font-weight: 800; font-size: 50px; }
.contents1 {width: 1000px; text-align: center; margin: 50px auto;}
.contents1 p { line-height: 2em;}
.content { width: 100%; height: 800px;}
.content form {width: 300px; margin: 0 auto; line-height: 2em;}
.page_subtitle {color: #f2522e; font-size: 25px; font-weight: 700; text-align: center; margin-bottom: 50px; margin-top: 60px; }
.form_wrap li input { width: 300px; box-shadow: none; border-style: none; border-bottom: 1px solid #000; padding: 5px; }
.form_wrap li select { width: 310px; height: 30px; border-color: #bebebe;}
.form_wrap li {margin-bottom: 20px;}
.form_wrap li label { font-weight: 700;}
.button_group {width: 100%; display: flex; align-items: center;justify-content: center; margin-top: 50px;}
.button { width: 150px; height: 46px; border-radius: 50px; border: 1px solid #f2522e; background-color: #fff; color: #f2522e; margin: 5px; font-weight: 700; font-size: 14px;}
#enter { width: 150px; height: 46px; border-radius: 50px; border: 1px solid #f2522e; background-color: #fff; color: #f2522e; margin: 5px; font-weight: 700; font-size: 14px; background-color: #f2522e; color: #fff}

.button:hover {cursor: pointer;}
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
	<div class="page_title"><h2>관광가이드 예약</h2></div>
	<div class="breadcrumb">여행도우미 > 관광가이드 예약</div>
	<div id="line"></div>
	    <div class="page_head">
	      
	            <p>해설과 함께하는<br>전주 도보 예약 투어</p>
	            <div class="imgwrap"><img src="${ hpath}/img/guide/dongosanseong.png" alt="관광가이드 예약"></div>
	    </div>
	        
	    <div class="content" id="page1">
	        <div class="page_subtitle"> 예약자 정보</div>
	
	        <form action="${hpath}/tour_reservation" method="post">
	            <ul class="form_wrap">
	                <li>
	                    <div><label for="name"> 이름</label></div>
	                    <div><input type="text" name="name" id="name" readonly value=${sname } ></div>
	                </li>
	                <li>
	                    <div><label for="phoneNumber"> 연락처</label></div>
	                    <div><input type="text" name="phoneNumber" id="phoneNumber" readonly value=${sphone_number } ></div>
	                </li>
	                <li>
	                    <div><label for="email"> 이메일</label></div>
	                    <div><input type="text" name="email" id="email" readonly value=${semail } ></div>
	                </li>
	                <li>
	                    <div><label for="course">희망코스</label></div>
	                    <div>
	                        <select name="course" id="course" readonly>
	                        <option value="0" disabled="disabled"  selected>${ tourismFromCidList.get(0).getName()}</option>
	                        </select>
	                    </div>
	                </li>
	                <li>
	                    <div><label for="time">투어 시간</label></div>
	                    <div>
	                     <select name="time" id="" onchange="onTimeChanged(this)">
	                        <option value="default" disabled="disabled" selected>시간을 선택해주세요</option>
	                        <!-- 수용가능 인원수가 0이되면 disabled -->
	                        <c:forEach var="item" items="${ tourismFromCidList}">
	                         	<c:choose>
	                         		<c:when test="${ item.getMax_headcount() eq 0  }">
	                         			<option value="${ item.getWhen_time()}" disabled="disabled">${ item.getWhen_time()}:00</option>
	                         		</c:when>
	                         		<c:otherwise>
	                         			<option value="${ item.getWhen_time()}">${ item.getWhen_time()}:00</option>
	                         		</c:otherwise>
	                         	</c:choose>
	                        </c:forEach>
	                     </select>
	                    </div>
	                </li>
	                <li>
	                    <div><label for="people">인원</label></div>
	                    <div>
	                        <select name="people" id="people" >
	                            <option value="default" disabled="disabled" selected >인원을 선택해주세요. (최대 4명)</option>
	                            <option value="1" >1명</option>
	                            <option value="2" >2명</option>
	                            <option value="3" >3명</option>
	                            <option value="4" >4명</option>
	                        </select>
	                    </div>               
	                </li>
	            </ul>
	            <div class="button_group">
				    <button type="button" class="button" id="cancel" onclick="location.href='${ hpath}/tour_guide'">취소</button>
				    <button type="submit" class="button" id="enter">예약하기 <span class="simple-line-icons--arrow-right2"></span></button>
				</div>
	       </form>
	     </div>       
</div>
<script>
	function onTimeChanged(e) {
		var when_time = $(e).val();
		
		<% 
		  List<Tourism> tourrismList = (List<Tourism>) request.getAttribute("tourismFromCidList");
		  JSONObject jsonObject = new JSONObject();
		  
		  
		 /*  이제 리트스를 배열로 만들어서  <%= 해야됌 */
		%>
		
		
	}
</script>
<%@ include file="/footer.jsp" %>
</body>
</html>