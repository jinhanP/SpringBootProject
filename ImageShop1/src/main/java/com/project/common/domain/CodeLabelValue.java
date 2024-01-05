package com.project.common.domain;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//매개변수 생성자
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class CodeLabelValue {
	private final String value;
	private final String label;
}
