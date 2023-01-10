package com.kh.pill.chat.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.pill.chat.model.service.ChatService;
import com.kh.pill.chat.model.vo.ChatRoom;
import com.kh.pill.member.model.vo.Member;

@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@RequestMapping("chat.ch")
	public String enrollForm() {
		
		return "common/chat";
	}
	
	@RequestMapping(value="beginChat.ch", produces="text/html; charset=UTF-8")
	public String beginChat(HttpSession session, ChatRoom chatRoom) {
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		
		chatRoom.setHostNo(1);
		chatRoom.setMemberNo(memberNo);
		
		System.out.println("chatRoom : " + chatRoom);
		
		int result = chatService.insertChatRoom(chatRoom);
		System.out.println("result : " + result);
		
		return (result > 0) ? "success" : "fail";
	}
	
	
	@RequestMapping("getChatListString.ch")
	public ModelAndView getChatListString(ModelAndView mv, int memberNo) {
		// mv.setViewName("common/menubar");
		ArrayList<ChatRoom> chattingList = chatService.getChattingList();
		System.out.println("chattingList : " + chattingList);
		// Host savedHost = hostService.getHostByNo(hostNo);
		
		String chatListString = Integer.toString(chattingList.get(0).getChatRoomNo());
		
		for (int i = 1; i<chattingList.size(); i++) {
			chatListString += ","+ Integer.toString(chattingList.get(i).getChatRoomNo());
			
		}
		System.out.println("chatListString : " + chatListString);
		
		mv.addObject("chatListString", chatListString);
		mv.addObject("chattingList", chattingList).setViewName("common/chat");
		// mv.addObject("savedHost", savedHost);
		
		/*
		if (hostingType == 1) {
			AccMainDto accMainDto = hostService.getAccMainByHostNo(hostNo);
			mv.addObject("accMainDto", accMainDto);
		} else {
			ActMainDto actMainDto = hostService.getActMainByHostNo(hostNo);
			mv.addObject("actMaintDto", actMainDto);
		}
		*/
		
		return mv;
	}
	
}
