<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css" />
<style>
  .breadcrumb { 
    font-size: 0.9em; 
    margin-bottom: 10px; 
    color:rgb(134, 134, 134); 
    text-align: center; 
  }
  #qna_main {
    width: 100%;
    height: auto;
    min-height: 100%;
    margin: 100px auto;
  }
  #qna_insert {
    width: 100%;
    height: 200px;
    display: flex;
    justify-content: space-around;
    align-items: center;
  }
  #qna_insert_btn1 {
    margin: 0 auto;
    width: 130px;
    height: 36px;
    background-color: #fff;
    border-radius: 30px;
    color: #FF431B;
    font-size: 15px;
    cursor: pointer;
    border: 1px solid #FF431B;
  }
  #qna_insert_btn1:hover {
    background-color: #FF431B;
  color: #fff;
  }
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>Qna</h3></div>
<div class="breadcrumb">공지사항 > Qna</div>
<div id="qna_main">
   <c:if test="${empty qnaList }">
     <h2 style="text-align: center">글이 없습니다.</h2>
   </c:if>
   <c:if test="${!empty qnaList }">
      <table>
        <thead></thead>
        <tbody></tbody>
      </table>
   </c:if>
</div>
 <div id="qna_insert">
   <button type="button" id="qna_insert_btn1">글작성</button>
 </div>
</div>

<%@ include file="/footer.jsp" %>
</body>
</html>