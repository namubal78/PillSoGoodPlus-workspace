package com.kh.pill.chat.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ChatRoom {

	private int chatRoomNo;
	private int hostNo;
	private Integer memberNo;
	private Date updatedDate;
	private String lastMessage;
	private int lastMessageSenderNo;
	private int memberUnreadCount;
	private int hostUnreadCount;
	private String lastMessageChecked;
	
	private String memberName;
}
