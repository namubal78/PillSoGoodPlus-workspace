package com.kh.pill.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pill.chat.model.dao.ChatDao;
import com.kh.pill.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDao chatDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertChatRoom(ChatRoom chatRoom) {
		return chatDao.insertChatRoom(sqlSession, chatRoom);
	}

	@Override
	public ArrayList<ChatRoom> getChattingList() {
		return chatDao.getChattingList(sqlSession);
	}

}
