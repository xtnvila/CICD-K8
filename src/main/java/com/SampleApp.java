package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SampleApp {

	@GetMapping
	public String message(){
		return "Breathe deeply, everything is working fine.";
	}

	public static void main(String[] args) {
		SpringApplication.run(SampleApp.class, args);
	}

}
