package com.kh.pill.common.socket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class ChatHandler extends TextWebSocketHandler {

	List<HashMap<String, Object>> roomList = new ArrayList<>();
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		super.afterConnectionEstablished(session);
		
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
	}
	
	@Override // 브라우저 닫았을 때 소켓 삭제
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		
	}
	
	private static JSONObject jsonToObjectParser(String jsonStr) {
		return null;
		
	}
	
	
}
