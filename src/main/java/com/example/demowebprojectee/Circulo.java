package com.example.demowebprojectee;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("rueda")
public class Circulo {
    @Value("#{T(java.lang.Math).random() * 100}")
    private float radio;

    public float getRadio() {
        return radio;
    }

    public void setRadio(float radio) {
        this.radio = radio;
    }
}
