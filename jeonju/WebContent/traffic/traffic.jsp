<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통 정보</title>
<%@ include file="/head.jsp" %>
<% 
  Date date = new Date();
  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
  String today = dateFormat.format(date);
  String today_year = 1901 + date.getYear()+"";
  String today_date = date.getDate() >= 10 ? (date.getDate()+"") : ("0"+date.getDate());
  String today_month = date.getMonth() >= 10 ? (date.getMonth() +1 + "") : ("0"+ (date.getMonth() + 1));
  String nextDay = today_year + "-" + today_month + "-" + today_date;
  request.setAttribute("today",  today);
  request.setAttribute("nextDay",  nextDay);
%>
</head>
    <style>
        #top_wrap {
            width: 1200px;
            height: 50px;
            margin-right: auto;
            margin-left: auto;
            text-align: center;
            font-size: 23px;
            font-weight: 700;
            color: #F24405;
        }
        #title_wrap {
            width: 1200px;
            height: 300px;
            background-color: #FEF5EF;
            margin: 0 auto;
            

        }
        #title_sub_comment {
            display: block;
            text-align: center;
            font-weight: 400;
            padding-top: 40px;
        }
        #title_box {
            width: 100%;
            height: 200px;
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }
        .title_box_son1.getcolor {
            background-color: #F24405;
            color: white;
        }

        .title_box_son1 {
            width: 20%;
            height: 60%;
            margin-top: 20px;
            background-color: white;
            display: flex;
            justify-content: center;
            border-radius: 15px;
            cursor: pointer;
        }

        #option_wrap {
            width: 1200px;
            height: 100px;
            background-color: #FEF5EF;
            display: flex;
            justify-content: center;
            margin: 20px auto;
        }
        #option_wrap_item {
            width: 900px;
            margin: 20px 5px;
        }
        #selectInput {
            width: 30%;
            height: 60px;
            background-color: white;
            border: none;
        }

        select {
            width: 30%;
            height: 60px;
            background-color: white;
            border: none;
            
        }

        #btn {
            width: 10%;
            height: 60px;
            align-self: center;
            cursor: pointer;
            display: flex;
            justify-content: center;
        }

        button {
            width: 100%;
            height: 60px;
            background-color: #F24405;
            align-self: center;
            font-size: x-large;
            color: #fff;
            cursor: pointer;
            border: #fff;
            border-radius: 5px;
        }

        button:hover {
            width: 90%;
            height: 90%;
            font-size: larger;
            transition: all 1s;
        } 
        input[type="date"]{
        	width: 30%;
		    background-color: #0080ff;
		    color: #ffffff;
		    border: none;
		    outline: none;
		}
		#result_wrap {
			width: 1200px;
            height: auto;
            margin: 20px auto;
           	display: grid;
            grid-template-columns: repeat(4,1fr);
            grid-template-rows: auto;
		}
		#result_wrap div {
            width: 100%;
            height: 50px;
            font-size: larger;
            font-weight: 500;
            text-align: center;
        }
        #result_wrap div:last-child {
            padding-bottom: 100px;
        }
        .result_wrap_head {
            background-color: #F24405;
        }
    </style>
<body>
<%@ include file="/header.jsp" %>
<div id="content">
     <div id="top_wrap">대중교통 정보</div>
     <div id="title_wrap">
            <h4 id="title_sub_comment">교통수단별 전주 오시는 경로를 안내해드립니다.</h6>
            <div id="title_box">
                <div class="title_box_son1 getcolor">
                    <div id="imoticon"></div>
                    <h4>고속버스</h4>
                </div>
                <div class="title_box_son1">
                    <div id="imoticon"></div>
                    <h4>시외버스</h4>
                </div>
            </div>
      </div>
      <div id="option_wrap">
            <div id="option_wrap_item">
                <select name="start_lo">
                    <option>출발지</option>
                    <option value="100">인천</option>
                    <option></option>
                    <option></option>
                </select>
                <select name="end_lo">
                    <option>도착지</option>
                    <option value="602">전주</option>
                    <option></option>
                </select>
                    <input id="selectInput" type="date" name="schedule" min="${today }" max="${nextDay }" />                 
            </div>
            <div id="btn">
                <button onclick="onClick()">조회하기</button>
            </div>
      </div>
      <div id="result_wrap">
        
      </div>
</div>
<%@ include file="/footer.jsp" %>
<script>
		let result_wrap = $("#result_wrap");
		
		function make_menu_Layout() {
			result_wrap.prepend("<div class='result_wrap_head'>출발시간</div><div class='result_wrap_head'>도착시간</div><div class='result_wrap_head'>등급</div><div class='result_wrap_head'>가격</div>");
		}
		let is_showed = false;
		
		
		// 교통정보 API에서 data 받아오기
        function onClick() {
            let start_lo = $("select[name=start_lo] option:selected").val();
            let end_lo = $("select[name=end_lo] option:selected").val();
            let start_date = $("input[type=date]").val().replace(/[^0-9]/g,"");
            console.log(start_date);
        $.ajax({
            url: "https://apis.data.go.kr/1613000/ExpBusInfoService/getStrtpntAlocFndExpbusInfo?serviceKey=oHfkaY88BRbD4M%2Fyx0m%2FtGQPCrjTmC97aKXu0LTqSYr8GwNqviM39OcSFzo00QDQ%2F8wqx98BelfUj%2BrtOSwqyA%3D%3D&pageNo=1&numOfRows=20&_type=json&depTerminalId=NAEK"+start_lo+"&arrTerminalId=NAEK"+end_lo+"&depPlandTime="+start_date+"&busGradeId=1",
            type: "get",
            dataType: "json",
            success:function (data) {
            	if(!data) {
            		alert("버스가 없습니다.");
            	}
            	else {
            		make_menu_Layout();
                    let result = data.response.body.items.item;
                    result.forEach(function(item) {
                        result_wrap.append("<div><h6>"+item.depPlandTime+"</h6></div><div><h6>"+item.arrPlandTime+"</h6></div><div><h6>"+item.gradeNm+"</h6></div><div><h6>"+item.charge+"원</h6></div>");
                    });
                    is_showed = true;
                    console.log(data.response.body.items.item);
            	}
            }
        })
        }
        
        
        
        
    </script> 
</body>
</html>