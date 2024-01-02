package com.zeus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//com.zeus 이후로 부터 패키지는 스캔에 검색 관리 대상.
@SpringBootApplication
public class SpringJdbcBoardApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringJdbcBoardApplication.class, args);
	}

}
