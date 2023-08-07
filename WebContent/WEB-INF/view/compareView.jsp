<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>compareView.jsp</title>

<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=cp%>/css/compareBox.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/userMyPage.css">


<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>


<style type="text/css">
<!--  배너 -->
.has_sub_menu
{
	list-style-type: none;
}

.side-menu 
{
	top: 50px;
	width: 5vw;
	z-index: 10;
	background: #ef6351;
	border-right: 1px solid rgba(0, 0, 0, 0.07);
	height: 90%;
	margin-top: 5.7vh;
	position: fixed;
	align-items: center;
}

#sidebar-menu li 
{
	font-size: 1.5rem;
}

#sidebar-menu .fas 
{
	padding-top: 3vh;
	padding-left: 1.2vw
}

.left_sub_menu 
{
	position: fixed;
	top: 50px;
	width: 18vw;
	z-index: 10;
	left: 4.6vw;
	background: white;
	height: 90%;
	margin-top: 5.7vh;
}

.sub_menu 
{
	margin-top: 50px;
}

.left_sub_menu>.sub_menu li:hover 
{
	color: ff5858;
	background-color: #e1e1e1;
}

.left_sub_menu>.sub_menu li 
{
	color: black;
	font-size: 17px;
	font-weight: 600;
	padding: 20px 0px 8px 14px;
	border-bottom: 1px solid #e1e1e1;
}

.sub_menu>h2 
{
	padding-bottom: 4px;
	border-bottom: 3px solid #797979;
	margin-top: 30px;
	font-size: 21px;
	font-weight: 600;
	color: #333;
	margin-left: 10px;
	margin-right: 10px;
	font-family: 'NotoKrB';
}

.fas 
{
	color: #ff5858;
	font-size: 20px;
	line-height: 20px;
	float: right;
	margin-top: 0.6vh;
	margin-right: 2vw;
}

.sub_menu>.big_menu>.small_menu li 
{
	color: black;
	font-size: 14px;
	font-weight: 600;
	border-bottom: 0px solid #e1e1e1;
}

.big_menu 
{
	list-style-type: none;
	cursor: pointer;
}

.samll_menu 
{
	position: fixed;
	list-style-type: none;
	padding-inline-start: 0px;
	list-style: none;
	transition-duration: 0.5s;
}

.small_menuA 
{
	color: black;
	text-decoration-line: none;
	background-color: transparent;
	margin-bottom: 1vh
}

.big_menu ul 
{
	margin-top: 0;
	margin-bottom: 0;
}

.has_sub 
{
	width: 100%;
}
<!--  배너  -->


.compareMain
{	
	width : 70vw;
}

.compBody li
{
	list-style: none;
}

.compare
{
	margin-left: 1vw;
	margin-top: 2vw;
	margin-bottom: 2vw;
	margin-top: 3vh;
	display: flex;
}

.cLists1
{
	text-align: center;
}

.cList, .cTime1, .cTime0 
{
	width: 22vw;
	border-top: 1px solid #EF6351;
}

.cOption
{
	width: 22vw;
	border-top: 1px solid #EF6351;
}


.cImages
{	
	width: 22vw;
	list-style: none;
	border-top: 1px solid #EF6351;
}

.cImages0, .cImages1
{
	height: 40vh;
}

.cName0 div, .cList0 div, .cOption0 div, .cImages0 div, .cTime0 div
{
	margin-top:2vh; font-size: 2rem; font-weight: bold; 
	flex-direction: column; padding-top: 2.5vh; padding-left: 2.1vw;
}

.cName1 div
{
	margin-top:2vh; font-size: 2rem; font-weight: bold; 
	flex-direction: column; padding-top: 3vh; padding-left: 1.5.vw;
}

.cList1 div, .cOption1 div, .cImages1 div, .cTime1 div
{
	margin-top:2vh; font-size: 1.5rem; font-weight: bold; 
	flex-direction: column; padding-top: 3vh; 
}

.compare3 li.cTime2
{
	list-style: none;
}

.cTime1, .cName
{
	width: 22vw;
}


.cTime2 div
{
	font-size: 1.5rem; font-weight: bold; 
	flex-direction: column; padding-top: 2vh; 
	background-color: #F7F4EA;
}

.photo
{
	text-align: center;
}

.photo-rounded
{	
	width: 18vw;
	height: 25vh;
	padding-bottom: 5vh;
	padding: 1px;
}

.img-rounded
{	
	width: 15vw;
	height: 15vh;
}

.cName1
{
	background-color: #FABF9D;
}

.cName1, .cList1, .cOption1, .cTime1, .cImages1
{
	border-left: 1px solid #EF6351;
}

.cList1, .cOption1, .cImages1 div, .cImages1, .cTime1
{
	background-color: #F7F4EA;
}

.compare0
{
	width: 10vw;
}

.compare0 li
{
	height: 13vh;
}

.compare1, .compare2, .compare3
{
	width: 20vw;
	display: flex;
} 

.compare1 li, .compare2 li, .compare3 li.cName1, .compare3 li.cList1, .compare3 li.cImage1, .compare3 li.cOption1
{
	height: 13vh;
}

</style>

<script type="text/javascript">
	$(function()
	{
		$(".left_sub_menu").hide();
		$(".has_sub").click(function()
		{
			$(".left_sub_menu").fadeToggle(300);
			if ($('#checkOverlay').val() == "true")
			{
				$('.overlay').css("position", "fixed");
				$('.overlay').css("width", "0%");
				$('.overlay').css("height", "0%");
				$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
				$('.overlay').css("z-index", "0");
				$('#checkOverlay').attr("value", "false");
			} else
			{
				$('.overlay').css("position", "fixed");
				$('.overlay').css("width", "100%");
				$('.overlay').css("height", "100%");
				$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
				$('.overlay').css("z-index", "3");
				$('.overlay').css("margin-top", "1.011vh");
				$('#checkOverlay').attr("value", "true");
			}

		});
		// 왼쪽메뉴 드롭다운
		$(".sub_menu ul.small_menu").hide();
		$(".sub_menu ul.big_menu").click(function()
		{
			$("ul", this).slideToggle(300);
		});
		// 외부 클릭 시 좌측 사이드 메뉴 숨기기
		$('.overlay').on('click', function()
		{
			$('.left_sub_menu').fadeOut();
			$('.overlay').css("position", "fixed");
			$('.overlay').css("width", "0%");
			$('.overlay').css("height", "0%");
			$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
			$('.overlay').css("z-index", "0");
			$('#checkOverlay').attr("value", "false");
		});
	});
	
</script>
<script type="text/javascript">

 	// 2개 비교할 경우
 	$(document).ready(function()
 	{
        var st_num3 = ${st_num3 == null ? 0 : st_num3};

        if (st_num3 == 0) 
        {
            $('#compBody').css('margin-left', '17vw');
        }
    });
	
</script>


</head>
<body>
<form action="search.action" id="userForm" method="post">
<div class="header">
		<c:import url="/WEB-INF/view/header_user.jsp"></c:import>
</div>


	<div class="compareBody" style="display: flex; width: 80vw;">
		
		<!-- 왼쪽 메뉴 배너 -->
		<div class="left_column">
			<!-- 왼쪽 메뉴 -->
			<div class="left side-menu">
				<div class="sidebar-inner">
					<div id="sidebar-menu">
						<ul class="has_sub_menu">
							<li class="has_sub"><a href="javascript:void(0);"
								class="waves-effect"> <i class="fas fa-bars"
									style="color: #fff"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
	
			<!-- 왼쪽 서브 메뉴 -->
			<div class="left_sub_menu">
				<div class="sub_menu">
					<h2>MENU</h2>
					<ul class="big_menu">
						<li>가게 리스트<i class="arrow fas fa-angle-right"></i></li>
	
						<ul class="small_menu">
							<li><a href="#" class="small_menuA">가게1</a></li>
							<li><a href="#" class="small_menuA">가게2</a></li>
							<li><a href="#" class="small_menuA">가게3</a></li>
							<li><a href="#" class="small_menuA">가게4</a></li>
						</ul>
					</ul>
					<ul class="big_menu">
						<li>접수 내역<i class="arrow fas fa-angle-right"></i></li>
						<ul class="small_menu">
							<li><a href="#" class="small_menuA">소메뉴2-1</a></li>
							<li><a href="#" class="small_menuA">소메뉴2-2</a></li>
						</ul>
					</ul>
					<ul class="big_menu">
						<li>경고 내역</li>
					</ul>
					<ul class="big_menu">
						<li>새로운 가게 등록 신청</i></li>
					</ul>
				</div>
			</div>
			
			<div class="overlay">
				<input type="hidden" id="checkOverlay" value="false">
			</div>
		</div>
	
		
		<div class="compareMain">
			
			<div class="compTitle" style="width: 15vw; height: 15vh; margin-left: 44vw;">
				<span style="font-size: 3rem; font-weight: bold; text-align: center;">비교하기</span>
			</div>			
			
			
			<div id="compBody" class="compBody" style="display: flex; margin-left: 8.5vw;">
			
					<div class="compare0 compare">
						
						<div class="compContent">
							<div class="cLists0">
								<ul>
									<li class="" style="height: 25vh;"><div></div></li> <!-- 가게 사진 -->
									<li class="cName cName0"><div>가게명</div></li>
									<li class="cList cList0"><div>카테고리</div></li>
									<li class="cList cList0"><div>주소</div></li>
									<li class="cList cList0"><div>평점</div></li>
									<li class="cList cList0"><div>리뷰수</div></li>
									<li class="cTime cTime0" style="height: 36vh;"><div>영업 시간</div></li>
									<li class="cList cList0"><div>평균 가격</div></li>
									<li class="cImages cImages0" style="height: 25vh;"><div>대표 메뉴</div></li>
									<li class="cOption cOption0"><div>옵션 유무</div></li>
								</ul>
							</div>
						</div>
					
					</div>
					
					
					<div class="compare1 compare"> 
					
						<div class="compStore1">
							
							<div class="compContent">
								<div class="cLists1">
										
										<ul>
											<c:forEach var="ncl" items="${nameLoCat1}">
												<li class=""  style="height: 25vh;"><div>
													<a class="photo"><img src="${ncl.photo_link}"
													alt="..." class="photo-rounded"></a><br />
												</div></li>
												<li class="cName cName1"><div>${ncl.st_name}</div></li>
												<li class="cList cList1"><div>${ncl.food_name}</div></li>
												<li class="cList cList1"><div>${ncl.st_location}</div>
												</li>
											</c:forEach>
											<c:forEach var="sr" items="${scoRe1 }">
												<li class="cList cList1"><div>${sr.star_score }</div></li>
												<li class="cList cList1"><div>${sr.review_count }</div></li>
											</c:forEach>
											<li class="cTime cTime1" style="height: 36vh;">
												<div><c:forEach var="op" items="${openClose1 }">
													${op.day_name} ${op.start_time}:00 ~ ${op.end_time}:00 <br />
													</c:forEach>
												</div>
											</li>
											
											<c:forEach var="menu" items="${menuLists1 }">
												<li class="cList cList1"><div>${menu.price_avg } 원</div></li>
												<li class="cImages cImages1"  style="height: 25vh;"><div>
													<a class="cImage"> <img src="images/${menu.image_link }"
													alt="..." class="img-rounded"></a><br />
													${menu.menu_name}
												</div></li>
											</c:forEach>
											<c:forEach var="o" items="${others1 }">
												<li class="cOption cOption1"><div>최대 ${o.max_customers} 명</div></li>
											</c:forEach>
										</ul>
									
								</div>
							</div>
							
						</div>	
								
					</div>
					
					
					<div class="compare2 compare">
					
						<div class="compStore2">
						
							<div class="compContent">
								<div class="cLists1">
									<ul>
										<c:forEach var="ncl" items="${nameLoCat2}">
												<li class=""  style="height: 25vh;"><div>
													<a class="photo"><img src="${ncl.photo_link}"
													alt="..." class="photo-rounded"></a><br />
												</div></li>
												<li class="cName cName1"><div>${ncl.st_name}</div></li>
												<li class="cList cList1"><div>${ncl.food_name}</div></li>
												<li class="cList cList1"><div>${ncl.st_location}</div>
												</li>
											</c:forEach>
											<c:forEach var="sr" items="${scoRe2 }">
												<li class="cList cList1"><div>${sr.star_score }</div></li>
												<li class="cList cList1"><div>${sr.review_count }</div></li>
											</c:forEach>
											<li class="cTime cTime1" style="height: 36vh;">
												<div><c:forEach var="op" items="${openClose2 }">
													${op.day_name} ${op.start_time}:00 ~ ${op.end_time}:00 <br />
													</c:forEach>
												</div>
											</li>
											
											<c:forEach var="menu" items="${menuLists2 }">
												<li class="cList cList1"><div>${menu.price_avg } 원</div></li>
												<li class="cImages cImages1"  style="height: 25vh;"><div>
													<a class="cImage"> <img src="images/${menu.image_link }"
													alt="..." class="img-rounded"></a><br />
													${menu.menu_name}
												</div></li>
											</c:forEach>
											<c:forEach var="o" items="${others2 }">
												<li class="cOption cOption1"><div>최대 ${o.max_customers} 명</div></li>
											</c:forEach>
									</ul>
								</div>
							</div>
						
						</div>	
								
					</div>
					
					
					<c:choose>
	  				<c:when test="${st_num3 ne 0 }">
						<div class="compare3 compare">
							<div class="compStore3">
								<div class="compContent">
									<div class="cLists1">
										
 											<ul>
										    	<c:forEach var="ncl" items="${nameLoCat3}">
										    		<li class=""  style="height: 25vh;"><div>
														<a class="photo"><img src="${ncl.photo_link}"
														alt="..." class="photo-rounded"></a><br />
													</div></li>
													<li class="cName cName1"><div>${ncl.st_name}</div></li>
													
													<li class="cList cList1"><div>${ncl.food_name}</div></li>
													<li class="cList cList1"><div>${ncl.st_location}</div>
													</li>
												</c:forEach>
												<c:forEach var="sr" items="${scoRe3 }">
													<li class="cList cList1"><div>${sr.star_score }</div></li>
													<li class="cList cList1" style="border-bottom: 1px solid #EF6351;"><div>${sr.review_count }</div></li>
												</c:forEach>
												<c:forEach var="op" items="${openClose3 }">
													<li class="cTime cTime2" style="border-left: 1px solid #EF6351;">
														<div style="height: 3.15vh;">${op.day_name} ${op.start_time}:00 ~ ${op.end_time}:00</div>
													</li>
												</c:forEach>
											    <c:forEach var="menu" items="${menuLists3 }">
											      <li class="cList cList1""><div>${menu.price_avg } 원</div></li>
											      <li class="cImages cImages1"  style="height: 25vh;"><div>
											        <a class="cImage"> <img src="images/${menu.image_link }"
											        alt="..." class="img-rounded"></a><br />
											        ${menu.menu_name}
											      </div></li>
											    </c:forEach>
											
											    <c:forEach var="o" items="${others3 }">
											      <li class="cOption cOption1"><div>최대 ${o.max_customers} 명</div></li>
											    </c:forEach>
										  </ul>
											
									</div>
								</div>
							</div>		
						</div>
				   </c:when>
			   <c:otherwise>
			   </c:otherwise>
			  </c:choose>	
					
			</div> <!-- compBody -->
			
		</div>
			
		
		
		<!-- 비교함 영역 -->
		<div id="compareDiv">
			<div class="rectDiv">
				<!-- 비교함 이름 영역 -->
				<div class="comNameDiv">
					<span style="font-color: #ef6351">비교함</span>
				</div>
				<!-- 비교함 담은 가게 리스트 영역 -->
				<div class="comStoreListDiv">

					<!-- 비교함 담은 가게 리스트 영역 -->
					<div class="comStoreListDiv">
						<c:choose>
							<c:when
								test="${fn:length(comList) == 0 or fn:length(comList) == null}">
								<c:forEach var="i" begin="0" end="9">
									<div class="comStoreDiv">
										<!-- 한 가게 대표사진 영역 -->
										<div class="comStoreImgDiv">
											<img class="comStNoImg" src="<%=cp%>/images/comp_img01.png">
										</div>
										<!-- 한 가게 가게이름 영역 -->
										<div class="comStoreNameDiv"></div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<!-- 한 가게 영역 -->
								<c:forEach var="com" items="${comList}" varStatus="status">
									<div class="comStoreDiv">
										<!-- 한 가게 대표사진 영역 -->
										<div class="comStoreImgDiv">
											<button type="button" value="${com.st_num}" class="comDelete">X</button>
											<label for="${com.st_num}" class="stLabel"> <input
												type="checkbox" class="comStImgCB" name="comStImgCB" id="${com.st_num}">
												<c:set var = "photo" value="${com.photo_link }"/>
												
												<c:choose>
													<c:when test="${empty photo}">
														<img class="stImg" src="<%=cp%>/images/logo_text.png">
													</c:when>
													<c:otherwise>
														<img class="stImg" src="<%=cp%>/${photo}">
													</c:otherwise>
												</c:choose>
											</label>
										</div>
										<!-- 한 가게 가게이름 영역 -->
										<div class="comStoreNameDiv">${com.st_name}</div>
									</div>
								</c:forEach>
								<c:forEach begin="0" end="${10 - fn:length(comList)}">
									<div class="comStoreDiv">
										<!-- 한 가게 대표사진 영역 -->
										<div class="comStoreImgDiv">
											<img class="comStNoImg" src="<%=cp%>/images/comp_img01.png">
										</div>
										<!-- 한 가게 가게이름 영역 -->
										<div class="comStoreNameDiv"></div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					<input type="hidden" id="checkedCompare" name="checkedCompare">
				</div>

			<div class="comStoreBtnDiv">
				<button type="button" class="btn" id="comBtn" name="comBtn">비교하기</button>
			</div>
		</div>
		
	</div>


	<div class="footer">
			<c:import url="/WEB-INF/view/footer.jsp"></c:import>
	</div>
</form>
</body>
</html>