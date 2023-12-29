package com.zeus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//어노테이션은 세 개의 다른 어노테이션을 편리하게 결합한 것으로, 각각 `@Configuration`, `@EnableAutoConfiguration`, `@ComponentScan` = @SpringBootApplication

@SpringBootApplication
public class DevProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevProjectApplication.class, args);
	}

}
