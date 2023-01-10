package com.kh.pill.chat.model.service;

import java.util.ArrayList;

import com.kh.pill.chat.model.vo.ChatRoom;

public interface ChatService {

	// 채팅방 생성 서비스
	int insertChatRoom(ChatRoom chatRoom);

	// hostNo 로 채팅리스트 조회 서비스
	ArrayList<ChatRoom> getChattingList();

}
