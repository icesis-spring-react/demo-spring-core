package com.example.demowebprojectee;

import org.springframework.beans.factory.annotation.Value;

public class HolaMundo {
    private String message;

    //@Value("valor inyectado")
    private String despedida = "Valor inyectado";

    public String getDespedida() {
        return despedida;
    }

    public void setDespedida(String despedida) {
        this.despedida = despedida;
    }

    public HolaMundo() {
        System.out.println("Entrando al constructor default");
        message = "";
    }
    public HolaMundo(String message /*, @Value("valor inyectado")String d*/) {
        System.out.println("Entrando al constructor parametrizado");
        this.message = message;
       // despedida = d;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        System.out.println("Entrando al metodo setter");
        this.message = message;
    }
}
