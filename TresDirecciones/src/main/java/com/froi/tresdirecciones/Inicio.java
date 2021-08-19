/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.froi.tresdirecciones;

import com.froi.tresdirecciones.gramatica.LexerP;
import com.froi.tresdirecciones.gramatica.ParserP;
import java.io.StringReader;
import java.util.Scanner;

/**
 *
 * @author froi-pc
 */
public class Inicio {
    
    public void iniciar() {
        String entrada;
        Scanner scan = new Scanner(System.in);
        System.out.println("Ingrese una cadena: ");
        entrada = scan.nextLine();
        analizar(entrada);
    }
    
    private void analizar(String entrada) {
        StringReader reader = new StringReader(entrada);
        LexerP lexer = new LexerP(reader);
        ParserP parser = new ParserP(lexer);
        try {
            parser.parse();
        } catch (Exception e) {
            System.err.println("Error al parsear. Error irrecuperable");
        }
    }
    
}
