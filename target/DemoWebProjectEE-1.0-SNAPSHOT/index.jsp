<%@ page import="java.util.Calendar" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="com.example.demowebprojectee.HolaMundo" %>
<%@ page import="com.example.demowebprojectee.Circulo" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="org.springframework.context.annotation.AnnotationConfigApplicationContext" %>
<%@ page import="com.example.demowebprojectee.AppConfig" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ejemplo Inyeccion dependencias</title>
</head>
<body>
<h1>Ejemplo de Inyeccion de dependencias</h1>
<ul>
    <li><b>Fecha:</b>
        <%
            LocalDate fecha = LocalDate.now();
            out.println(fecha);
        %>
    </li>
        <%
            ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
            HolaMundo hola = (HolaMundo) context.getBean("HolaMundo"); // setter

            //Circulo rueda = (Circulo) context.getBean("rueda");

            ApplicationContext ctx = new AnnotationConfigApplicationContext(AppConfig.class);
            Circulo rueda = (Circulo)ctx.getBean(Circulo.class);
        %>
    <li><b>OS Name:</b><%= hola.getMessage()  %></li>
    <li><b>Circulo: </b><%= rueda.getRadio() %></li>
</ul>
</body>
</html>