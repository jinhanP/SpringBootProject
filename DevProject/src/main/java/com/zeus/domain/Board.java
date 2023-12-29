package com.zeus.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// 매개변수 생성자 @NonNull 
@RequiredArgsConstructor
// 생성자 만들어준다.
@NoArgsConstructor
// 겟,셋 만들어준다.
@Getter
@Setter
@ToString
// 이퀄스, 해쉬코드
@EqualsAndHashCode(of = "boardNo")
public class Board implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@NonNull
	private int boardNo;
	@NonNull
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	
	
	

	
}
