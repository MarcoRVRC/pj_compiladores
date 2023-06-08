package com.umg.proyectocompiladores.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import umg.compiladores.Lexer;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import umg.compiladores.*;

@RestController

public class CompiladorController {

    StringBuilder builder = new StringBuilder();

    String nomArchivo = "codigoCompilar.java";
    String ruta = "/archivo/";

    @PostMapping(value = "/traducir")
    public String  traducir(@RequestParam("txtJava") String textoJava,
                            @RequestParam("fileJava") MultipartFile fileJava) {

        builder.append(ruta);

        File folder = new File(builder.toString());
        if (!folder.exists()) {
            folder.mkdirs();
        }



        if (!textoJava.isEmpty()) {
            System.out.println("Se recibio Texto");
            leerTexto(textoJava);
        } else if (!fileJava.isEmpty()) {
            System.out.println("Se recibio Archivo");
        return    leerArchivo(fileJava);
        } else if (!textoJava.isEmpty() && !fileJava.isEmpty()) {
            System.out.println("Solo debe ingresar un medio");
        } else {
            System.out.println("No se recibio ninguna entrada");
        }
        return null;
    }


    public String leerArchivo(MultipartFile file) {
        byte[] bytes;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        Path path = Paths.get(ruta + nomArchivo);
        try {
            Files.write(path, bytes);
            compilarCup();
            return "Se compilo correctamente";
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public void leerTexto(String txtJava) {
        try (BufferedWriter escritor = new BufferedWriter(new FileWriter(nomArchivo))) {
            // Escribe la entrada de texto en el archivo
            escritor.write(txtJava);
            System.out.printf("Escritor  " + escritor);
            compilarCup();
        } catch (IOException e) {
            System.out.println("Ocurrió un error al crear el archivo: " + e.getMessage());
        }
    }

    public void compilarCup() {
        try {
            Reader reader = new FileReader(ruta +  nomArchivo);
            parser p = new parser(new Lexer(reader));
            Object result = p.parse().value;
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CompiladorController.class.getName()).log(Level.SEVERE, "Error al generar en cup ", ex);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


}
