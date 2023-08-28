package com.example.demowebprojectee;

import com.example.demowebprojectee.Circulo;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public Circulo rueda(){
        return new Circulo();
    }
}
