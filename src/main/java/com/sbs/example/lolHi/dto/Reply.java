package com.sbs.example.lolHi.dto;

import java.util.Map;

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
	private String body;
	private int memberId;
	private int relId;
	private String relTypeCode;
	
	
	private Map<String, Object> extra;
}
