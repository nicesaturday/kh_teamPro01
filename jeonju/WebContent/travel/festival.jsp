<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${ hpath}/css/button.css"/>
<link rel="stylesheet" href="${ hpath}/css/modal.css"/>
<style>
        #popup {
            width: 100%;
            height: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            transition : all 0.5s;
        }
        #popup_item {
            width: 900px;
            height: 0;
            margin-top: 20%;
            position: absolute;
            background-color: white;
            transition : all 0.5s;
        }
        #img_wrap{
            width: 100%;
            height: 20%;
            overflow: hidden;
            
        }
        #img_wrap img {
            width: 100%;
            height: 100%;
        }
        #title_wrap {
            position: absolute;
            font-weight: 800;
            color: white;
            top: 5%;
            left: 40%;
        }
        #top_wrap {
            width: 1200px;
            height: 50px;
            margin-right: auto;
            margin-left: auto;
            text-align: center;
            font-size: 30px;
            font-weight: 700;
            border-bottom: 2px solid #F24405;
            color: #F24405;
        }
        #main_wrap {
            width: 1200px;
            margin: 20px auto;
        }
        #grid_main {
            width: 960px;
            margin: 20px auto;
            display: grid;
            grid-template-columns: repeat(3 , 300px);
            grid-template-rows: auto;  
            gap: 30px;
        }
        #grid_main div {
        	padding: 2px;
        }
        
        
        #grid_main div img{
            width: 300px;
            height: 300px;
            align-self: center;
        }
        .item_title {
            font-weight: 700;
        }
        .item_date {
            color: #F24405;
        }
        button.button--moema.item_button {
            font-weight: 700;
            color: #F24405;
            border-color: #F24405;
            border-radius: 25px;
        }
        
       
        
    </style>
</head>
<body>
<%@ include file="/header.jsp" %>
  <div id="modal-container" class="modal unstaged">
        <div class="modal-overlay" id="modal-close"></div>
        	<div id="popup">
                <div id="popup_item">
                    <div id="img_wrap">
                        <img src="" alt="">
                    </div>
                    <div id="title_wrap">
                        <h2></h2>
                    </div>
                </div>
            </div>	
  </div>
  <div id="content">
        <div id="top_wrap">
            	대표축제
        </div>
        <div id="main_wrap">
        	<div id="grid_main">
        		<c:forEach var="item" items="${ festivalList}">
        			<div>
                    	<img src="${ item.img}" alt="전주 축제 사진">
                    	<div class="item_comment">
                        	<div class="item_title">${ item.name}</div>
                        	<div class="item_detail">
                        	<c:choose>
						        <c:when test="${fn:length(item.comment) gt 26}">
						        <c:out value="${fn:substring(item.comment, 0, 25)}">
						        </c:out></c:when>
						        <c:otherwise>
						        <c:out value="${ item.comment}">
						        </c:out></c:otherwise>
							</c:choose>
							...
                        	</div>
                        	<div class="item_date">${ item.period}</div>
                        	<button class="button button--moema item_button" id="${ item.no}"}>더보기 ></button>
                    	</div>
                </div>
        		</c:forEach>
        	</div>
        </div>
  </div>

<%@ include file="/footer.jsp" %>
<script>

document.querySelector('.button').addEventListener("click", function(e){
   
   document.querySelector('.button').style.visibility = "hidden";
   document.getElementById('modal-container').classList.toggle('opaque');
   document.getElementById('modal-container').classList.toggle('unstaged');
   document.getElementById('popup').style.height = "100%";
   document.getElementById('popup_item').style.height = "400px";
   
   
   console.log("${ hpath}/festivalOneApi");
   $.ajax({
	   url:"${ hpath}/festivalOneApi",
	   type:"get",
	   dataType:"json",
	   data: {no: e.target.id},
	   success:function (data) {
		   console.log(data);
		   document.querySelector('#img_wrap img').src = data.img;
		   document.querySelector('#title_wrap h2').innerText = data.name;
	   },
	   error:function (data) {
		   console.log("실패",data);
	   }
	   
   })

});


document.getElementById('modal-close').addEventListener("click", function(e){

   setTimeout(function() {document.querySelector('.button').style.visibility = "visible";},500);
   document.getElementById('modal-container').style.pointerEvents = "none";
   document.getElementById('popup').style.height = "0";
   document.getElementById('popup_item').style.height = "0";
   document.getElementById('modal-container').classList.toggle('opaque');
   document.getElementById('modal-container').addEventListener('transitionend', function(e){
       this.classList.toggle('unstaged');
       this.removeEventListener('transitionend',arguments.callee);
   //레이아웃이 꺼질때, 이벤트를 막아서 검은화면만 남는 것을
   setTimeout(function() {document.getElementById('modal-container').style.pointerEvents = "auto";},1000);
});
});



</script>
</body>
</html>