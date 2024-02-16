package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	private int id;
	private String regDate;
	private String updateDate;
	private int memberId;
	
	private int relId;
	private String relTypeCode;
	
	
	private String comment;
	
	private int goodReactionPoint;
	private int badReactionPoint;

	private String extra__writer;

	private boolean userCanModify;
	private boolean userCanDelete;
}