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
public class ChatMessage {

	private int chatRoomNo;
	private int sendingMemberNo;
	private String content;
	private String checked;
	private Date sendingDate;
	
}
