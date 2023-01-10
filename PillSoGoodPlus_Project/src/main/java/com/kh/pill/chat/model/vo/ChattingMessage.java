package com.kh.pill.chat.model.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * sender 와 receiver 의 정보를 반환하는 vo
 * @author 한영섭
 *
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ChattingMessage {

	private int chatRoomNo;
	private int hostNo;
	private int hostingMemberNo;
	private String hostName;
	
	private int sendingMemberNo;
	private String sendingMemberName;
	
	private String content;
	private String checked;
	@JsonFormat(pattern= "yyyy.MM.dd hh:mm")
	private Date sendingDate;
	
}
