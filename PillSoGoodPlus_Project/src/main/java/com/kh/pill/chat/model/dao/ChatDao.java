package com.kh.pill.chat.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.pill.chat.model.vo.ChatRoom;

@Repository
public class ChatDao {

	public int insertChatRoom(SqlSessionTemplate sqlSession, ChatRoom chatRoom) {

		return sqlSession.insert("chatMapper.insertChatRoom", chatRoom);
	}

	public ArrayList<ChatRoom> getChattingList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("chatMapper.getChattingList");
	}

}
