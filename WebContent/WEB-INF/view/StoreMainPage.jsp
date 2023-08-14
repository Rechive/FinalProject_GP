<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->

<!-- CSS -->
<%-- <link rel="stylesheet" href="<%=cp %>/css/StoreMain.css"> --%>

<!-- IONICONS -->
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<!-- JS 
<script src="assets/js/main.js"></script> -->


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Orbit&display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>

<style type="text/css">
	.container
	{
		position: static;
		display: flex;
		justify-content: flex-start;
		width: 100%;
		align-items: stretch;
		/* font-family: 'Black Han Sans', sans-serif; */
		font-family: 'Orbit', sans-serif;
		margin: 0;
	}
	
	header
	{
		position: sticky;
  		top: 0;
  		background-color: white;
	
	}
	
	.storemain_body
	{
		display: flex;
		flex-direction: column;
		width: 50%;
		height: 100%;
		margin-left: 25vw;
	}
	
	.storemain_bodyTop
	{
		position: static;
		display: flex;
		height: 15vh
	}
	
	.storeName
	{
		font-family: 'Black Han Sans', sans-serif;
		font-size: 40pt;
	}
	
	.storemain_chart
	{
		display: flex;
		flex-direction: column;
	}
	
	.storemain_rekey
	{
		display: flex;
	    max-width: 65vw;
	    flex-direction: column
	}
	
	.doughnutChart
	{
		width: 50vw;
		margin-bottom: 10vh;
	}
	
	.chart_content
	{
		max-width: 65vw;
	}
	
	h2
	{
		font-size: 30pt;
		margin-top: 0em;
	}
	
	.review_keyword
	{
		display:flex;
		flex-direction:column;
		align-items: center; 
		flex-wrap:wrap;
		height: 38vh;
	}
	
	.review_keyword li
	{
		width: 15vw;
		margin-bottom: 2vh;
		font-size: 0.8vw;
		margin-left: 2.8vw;
	}
	
	.storemain_review
	{
		width: 56vw;
	}
	
	h3
	{
		font-size: 20pt;
	}
	
	.review
	{
		height: 6em;
		margin-bottom: 1vh;
		background-color: #f5f3e7;
	}
	
	.review_top
	{
		display: flex;
		justify-content: space-between;
		padding-top: 0.5vh;
		margin-bottom: 0.6vh;
		margin-right: 0.8vw;
		margin-left: 0.8vw;
	}
	
	.review_body
	{
		margin-left: 0.8vw;
	}
	
	.error
	{
		display: flex;
		width: 56vw;
		height: 6em;
		justify-content: center;
		align-items: center;
		background-color: #FF4500;
		
	}
	
	.errorMsg
	{
		width: 33vw;
		color: white;
		text-align: center;
	}
	
	.button  
	{
		display: flex;
		flex-direction: column;
		justify-content: center;
		padding-top: 2vh;
	}
	
	.btn
	{ 
		display: flex;
		justify-content: center;
		width: 14.5vh;
		height: 3vh;
		margin-bottom: 1.5vh;
		cursor: pointer;
		text-align: center;
		border: none;
		border-radius: 4px;
		font-size: 13px;
		font-weight: 500;
		align-items: center;
		background-color: transparent;
	}
	.btn-outline-primary:hover
	{
		transition: all 150ms linear;
		opacity: .85;
	}
	.btn-outline-primary:active
	{
		transition: all 150ms linear;
		opacity: .75;
	}
	
	.btn-outline-primary
	{
		background: none;
		border: 1px solid white;
		color: white;
	}
	
	.modifyBtn
	{
		/* font-size: small; */
		width: 6vw;
		height: 5vh;
		margin-top: 3.2vw;
		margin-left: 2vh;


		border-radius: 10px;
		font-size: 0.6vw;
		border: 1px solid #ef6351;
	  	background-color: white;
	  	color: #ef6351;
	  	cursor: pointer;
	  	align-content: center;
	}
	
	.modifyBtn:hover
	{
		width: 6vw;
		height: 5vh;
		border-radius: 10px;
		font-size: 0.6vw;
		border: 1px solid #ef6351;
	  	background-color: #fef1ef;
	  	color: #ef6351;
	  	cursor: pointer;
	  	align-content: center;
	  	box-shadow: 0 0 10px #ef6351;
	}
	
	.modifyBtn:action
	{
		width: 6vw;
		height: 5vh;
		border-radius: 10px;
		font-size: 0.6vw;
		border: 1px solid #ef6351;
	  	background-color: #f9ab9f;
	  	color: #ef6351;
	  	cursor: pointer;
	  	align-content: center;
	  	box-shadow: 0 0 10px #ef6351;
	  }
	
	
	i
	{
		background: none;
		color: white;
		margin-left: 0.3vw;
	}
	
	.sendBtn
	{
		margin-top: 0.5vh;
	}
	
	
	.review_reply
	{
		float: right;
		padding-right: 0.8vw;
	}
	.review_reply_txtarea
	{
	    display: none;         
	    vertical-align: middle; 
	    float: right;
		padding-right: 0.8vw;
	}
	
	.review_reply_btn
	{	
		float: right;
		display: none;
	}
	
	
      
</style>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

<!-- 배너 스크립트 -->
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

$(function ()
{
    $(".modifyBtn").click(function()
	{
		$("#userForm").attr("action", "stdetailmodify.action");
		$("#userForm").submit();
	});
});

// 답글달기
$(document).ready(function()
{
	
	// 답글쓰기 버튼 토글
    $('.reviewReply').click(function()
    {
        var replyTextarea = $(this).closest('.review').find('textarea.review_reply_txtarea');
        var sendReplyButtons = $(this).closest('.review').find('button.review_reply_btn');
        
        replyTextarea.toggle(); 
        sendReplyButtons.toggle();
    });
	
    $(".review_reply_btn").click(function(event) 
    {
        var replyTextarea = $(this).closest('.review').find('textarea.review_reply_txtarea');
        if(!replyTextarea.val().trim()) 
        {
            alert("답글을 입력해주세요!");
            event.preventDefault();
        } 
        else 
        {
            $(".rvReplyForm").submit();
        }
        
        console.log("RV_NUM:", $(this).closest('.review').find('input[name="rv_num"]').val());
        console.log("Reply content:", replyTextarea.val());


    });
    
});

</script>



<title>SideBar sub menus</title>
</head>
<body>
<form action="" id="userForm" method="post">

<header><c:import url="header_user.jsp"></c:import></header>

<div class="container">
	
	<c:import url="sideBar_store.jsp"></c:import>

	<div class="storemain_body">
		<c:if test="">
		<div class="error">
			<div class="errorMsg">
				토리네 도토리묵(으)로 가게정보수정요청이 들어왔습니다.<br>
				신고 접수된 정보에 대해 수정이 없을 시 3일뒤 패널티가 부여됩니다.
			</div>
			<div class="button">
				<button class="btn btn-outline-primary btn-layer-2_1" value="요청처리번호">
					이의 제기 요청
					<i class="fa fa-check"></i>
				</button>
				<button class="btn btn-outline-primary btn-layer-2_1" value="요청번호">
					패널티 회수 요청
					<i class="fa fa-check"></i>
				</button>
			</div>
		</div>
		</c:if>
		
		<div class="storemain_bodyTop">
			<p class="storeName">토리네 도토리묵</p>
			<input type="hidden" id="st_num" name="st_num" value="${session.st_num }">
			<button type="button" class="modifyBtn">
				가게 정보 수정
			</button>
			
		</div>
		<div class="storemain_content">
			<div class="storemain_chart">
				<!--차트가 그려질 부분-->
				<div class="chart_name"><h3>별점 추이</h3></div>
				<div class="chart_content"><canvas id="myChart" width="1100px" height="300px"></canvas></div>
			</div>
			<div class="storemain_rekey">
				<h3>선택된 리뷰 키워드</h3>
					<div class="doughnutChart"><canvas id="doughnutChartCanvas"></canvas></div>
					<ul class="review_keyword">
						<c:forEach var="maps" items="${rv_key_list }">
							<li><c:out value="${maps['RV_KEY_NAME']}" /><span>(<c:out value="${maps['COUNT_RV_KEY']}" />)</span></li>
						</c:forEach>
					</ul>
			</div>
			<div class="storemain_review">
				<h3>작성된 리뷰 목록</h3>
				
				<c:forEach var="review" items="${rv_list }">
					<div class="review">
						<div class="review_top">
							<div class="reviewNick">
								<span class="reviewNick">${review.user_nickname }</span>
							</div>
							<div class="sendBtn">
								<button type="button" value="${review.rv_num }">신고하기</button>
								<button type="button" class="reviewReply" value="${review.rv_num }">답글쓰기</button>
							</div>
						</div>
						
						<form action="rvReply.action" class="rvReplyForm" method="post">
				            <div class="review_body">
				                ${review.rv_content }
				                <c:choose>
				       			<c:when test="${not empty review.reply_content}">
					                <div class="review_reply">
					                    <span class="review_reply">답글 : ${review.reply_content}</span>
					                </div>
				                </c:when>
						        <c:otherwise>
									    
									        <div class="review_reply">
									            <textarea cols="30" rows="2" class="review_reply_txtarea" id="reply_content" name="reply_content"></textarea>
									            <input type="hidden" name="rv_num" value="${review.rv_num }" />
									            <div class="sendBtn">
									                <button type="button" class="review_reply_btn">리뷰답글</button>
									                <button type="reset" class="review_reply_btn">취소하기</button>
									            </div>
									        </div>
									    
								</c:otherwise>
						    	</c:choose>
				            </div>
			            </form>
					</div>
				</c:forEach>
				
			</div>
		</div>
	</div>
</div>

<c:import url="footer.jsp"></c:import>
	
	<script type="text/javascript">
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(context, {type: 'line' // 차트의 형태
										 // 차트에 들어갈 데이터
                						 ,data: {labels: <%=request.getAttribute("star_labels") %> //x 축  
		                    					,datasets: [{label: '별점평균'	//라벨 제목
									                        ,fill: false	// line 형태일 때, 선 안쪽을 채우는지 안채우는지
									                        ,data: ${star_data}	//x축 label에 대응되는 데이터 값
									                        ,backgroundColor: '#e09a8d'	//포인트 안을 채우는 색상
									                        ,borderColor: '#ef6351'		//선 색상
									                        ,borderWidth: 1}]}			//경계선 굵기
		 								 ,options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}
		 								 		   ,responsive: false							//
		 								 		   ,scales: {yAxes: [{ticks: {min: 0
																			 ,max: 5
																			 ,stepSize: 1}}]}	// 축 설정
		 								 		   ,legend: {display: false}}});		// 라벨 제목 안보이게 설정
		const canvas = document.getElementById("doughnutChartCanvas");
		const data = {labels: <%=request.getAttribute("rv_labels") %>
  			 		 ,datasets: [{label: "My First Dataset"
     					 		 ,data: <%=request.getAttribute("rv_data") %>
     					 		 ,backgroundColor: ["rgb(255, 99, 132)","rgb(54, 162, 235)","rgb(255, 205, 86)",]
      					 		 ,hoverOffset: 4,},]
      		 		 ,options: {responsive: false, }};
		new Chart(canvas, {type: "doughnut", data,});	
	</script>
	
</form>
</body>
</html>