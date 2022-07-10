<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	function add() {
		location.href = "<c:url value='/noticeMgmt.do'/>";
	}
	function view() {
		location.href = "<c:url value='/noticeView.do'/>";
	}
	function view(idx) {
		location.href = "<c:url value='/noticeView.do'/>?idx=" + idx;
	}
	function out() {
		location.href = "<c:url value='/userLogout.do'/>";
	}
	function moveNotice() {
		location.href = "<c:url value='/noticeList.do'/>";
	}
	function moveFreeBoard() {
		location.href = "<c:url value='/freeBoardList.do'/>";
	}
</script>

</head>
<div class="container">
	<header>
		<h1>LOGO</h1>
		<h1 onclick="moveNotice();">공지사항</h1>
		<h1 onclick="moveFreeBoard();">자유게시판</h1>
	</header>
	<h1>메인</h1>
	<div class="panel panel-default">
		<div class="panel-heading">
			<c:if test="${sessionScope.id !=null && sessionScope.id !='' }"> 
				${sessionScope.name } ( ${sessionScope.nickname}  ) 님 환영합니다
			<button type="button" class="btn btn-default" onclick="out();">로그아웃</button>
			</c:if>
		</div>
		<div class="panel-body col-sm-6">
		

				<div onclick="moveNotice();">공지사항</div>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>게시물번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>등록자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
						  <c:forEach var="result1" items="${resultList1}" varStatus="status">
							<tr>
								<td><a href="javascript:view('${result1.idx}');"><c:out value="${result1.idx}" /></a></td>
								<td><a href="javascript:view('${result1.idx}');"><c:out value="${result1.title}" /> </a></td>
								<td><c:out value="${result1.count}" /></td>
								<td><c:out value="${result1.writer}" /></td>
								<td><c:out value="${result1.indate}" /></td>
							</tr>
						  </c:forEach>
						</tbody>
					</table>
				</div>
			
		</div>
	 	
	  
		<div class="panel-body col-sm-6">
		
				<div onclick="moveNotice();">자유게시판</div>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>게시물번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>등록자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="result2" items="${resultList2}" varStatus="status">
								<tr>
									<td><a href="javascript:view('${result2.idx}');"><c:out value="${result2.idx}" /></a></td>
									<td><a href="javascript:view('${result2.idx}');"><c:out value="${result2.title}" /> </a></td>
									<td><c:out value="${result2.count}" /></td>
									<td><c:out value="${result2.writer}" /></td>
									<td><c:out value="${result2.indate}" /></td>
								</tr>
						  </c:forEach>
						</tbody>

					</table>
				</div>
			 
		</div>

	</div>
</div>
</html>
