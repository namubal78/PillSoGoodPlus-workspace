<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">    
	<title>chat</title>
	  
	<!-- Alertify 라이브러리 -->
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	
	
	<!-- jQuery 라이브러리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- 부트스트랩에서 제공하고 있는 스타일 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.6.1/sockjs.min.js"></script>
	<style>
	</style>
</head>
<body>
	<div class="wrap">
        <div id="navigator2">
			<jsp:include page="../common/menubar.jsp" />
		</div>
        <div id="header"></div>
        <div id="content">
            <div id="content_1"></div>
            <div id="content_2">
                <div id="content_2_1"><p>CHAT</p></div>
                <div id="content_2_2">
                
                	<!-- 채팅 클릭 시 뜨는 모달 (기존에는 안 보이다가 로그인 후 1:1채팅 클릭시 보임) -->
				    <div class="" id="ChatModal">
				        <div class="modal-dialog modal-lg">
				            <div class="modal-content">
				                <!-- Modal Header -->
				                <div class="modal-header">
				                    <h4 class="modal-title">Chat</h4>
				                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
				                </div>
				        		<!-- 채팅목록 -->
				        		<div class="section-title">채팅 리스트</div>
									<div class="section-main" style="height: 100px; border: 1px solid black;">
										<%-- 
										<c:choose>
											<c:when test="${empty chatList }">
											사용자 없음
											</c:when>
										<c:otherwise>
										--%>
											<ul class="sender-list__menu">
												<%-- 
												<c:forEach var="chatRoom" items="${chatList }" varStatus="loop">
													<c:if test="${not empty chatRoom.lastMessage }">
													
														<li class="sender-list__item" id="box-" onclick="enter()">
														<img style="width: 100px; height: 100px;"src="resources/images/Like.png" />
														<div class="sender-info">
														<p class="userName" id="userName"></p>
														<p class="lastmessage" id="lastmessage-">
														asdf
														</p>
														<p class="lastSendingTime" id="lastSendingTime-">
															노란 줄 <fmt:formatDate value="${chatRoom.updatedDate}" pattern="yyyy.MM.dd HH:mm"/>
														</p>
														</div>
														<div class="unreadcount" style="">
														3
														  </div>
													</li>
													
													</c:if>
											</c:forEach>
											--%>
											</ul>
										<%-- 
										</c:otherwise>
										</c:choose>
										--%>
									</div>
				                <!-- Modal body -->
				                <div class="modal-body" style="height: 500px; border: 1px solid black;">
				                
				                	<div class="section-title">채팅창</div>
										<div class="section-main" id="chatting-content">
											<div id="chatting-waiting">
										 	<%-- 
										 	<c:choose>
												<c:when test="${empty chatList }">
													<div>예약상담이 없습니다.</div>>
												</c:when>
												<c:otherwise>
													<div>예약상담을 시작하기 위해 왼쪽의 리스트에서 게스트를 선택하세요.</div>
												</c:otherwise>
											</c:choose>
											--%>
											</div>
											<div id="chatting-detail">
												
												<input type="hidden" id="sessionId" value="">
												<input type="hidden" id="roomNumber" value="">
												
										        <ul class="message__list"><li style="height: 300px;">메세지 영역</li></ul>
											</div>
										</div>
								    <div class="message__chatting" style="border: 1px solid black;">
								    	<p>입력창 영역</p>
								    	<textarea class="chatting" id="chatting" placeholder="Press Enter for sending a message." style="height: 100px; width: 800px;"></textarea>
								    </div>
								    <%-- 
						        	<div id="messages" style="height:300px;"></div>
						                        
							        <div>       
								        <input type="text" id="sender" value="${ loginUser.memberName }" style="display: none;">
								        <input type="text" id="messageinput" style="width:650px; height:70px;">
								        <button id="messageSend" type="button" class="btn btn-primary btn-lg" onclick="send();" style="width:100px; height:70px;">전송</button>
							       	</div>
							       	--%>
							    </div>
				                <!-- Modal footer -->
				                <div class="modal-footer">
				                	<input type="hidden" name="chatListString" value="${chatListString}">
				                    <button id="beginChat" type="button" class="btn btn-primary"><p>insert ChatRoom</p></button>
				                    <button id="getChatListString" type="button" class="btn btn-secondary" onclick="getChatListString();"><p>getChatListString</p></button>
				                    <button id="openChatSocket" type="button" class="btn btn-warning" onclick="openChatSocket();"><p>new WebSocket</p></button>
				                </div>
		            		</div>
		        		</div>
    				</div>
                </div>
        	</div>
            <div id="content_3"></div>
		</div>
		<jsp:include page="../common/footer.jsp" />
	</div>
	
	<script>
	
		$("#beginChat").click(function(){
			  
			$.ajax({
			        url: "beginChat.ch"
			        , type: 'post'
			        , data: {
			        	memberNo: "${loginUser.memberNo}"
			        }, 
			        success: function(result) {
			        	if(result == "success") {
			        		console.log("채팅방이 추가되었습니다");
			        	}
			        	
			        },
			        error : function() {
			        	console.log("댓글 작성용 ajax 통신 실패!");
			        }
			        
			    });
			
		});
	
		function getChatListString() {
			
			$.ajax({
				url: "getChatListString.ch",
				data : {memberNo:"${loginUser.memberNo}"},
				success : function() {
			        	console.log("getChatListString 생성");
				},
				error : function() {
		        	console.log("댓글 작성용 ajax 통신 실패!");
				}
			});

			console.log("여기 오긴하니?");
			
		}
	
		function openChatSocket(${chatListString}) {
			
			var chatSocket;
			console.log("여기 오긴하니?2");
			
			chatSocket = new WebSocket("ws://localhost:8006/PillSoGood/" + "${loginUser.memberNo}");
			console.log(chatSocket);
			
			chatSocket.onopen = function(event) {
				console.log("onOpen 다녀옴");
			}
		}
		
	</script>
	
</body>
</html>