package com.froi.tresdirecciones.gramatica;

import java_cup.runtime.*;
import static com.froi.tresdirecciones.gramatica.ParserPSym.*;

%%
%public
%class LexerP
%cup
%unicode
%line
%column

TerminacionLinea = [\r|\n|\r\n]
WS = [ \t\f]
Ignore = {WS} | {TerminacionLinea}

ALFANUMERICO = ([a-zA-Z] | [0-9])+
NUMERO = [0-9]+
SUMA = "+"
RESTA = "-"
MULTIPLICACION = "*"
DIVISION = "/"
PARA = "("
PARC = ")"
IGUAL = "="

%%

<YYINITIAL> {

    {IGUAL}             {return new Symbol(IGUAL, yyline+1, yycolumn+1, yytext());}

    {PARA}              {return new Symbol(PARA, yyline+1, yycolumn+1, yytext());}
    {PARC}              {return new Symbol(PARC, yyline+1, yycolumn+1, yytext());}

    {SUMA}              {return new Symbol(SUMA, yyline+1, yycolumn+1, yytext());}
    {RESTA}             {return new Symbol(RESTA, yyline+1, yycolumn+1, yytext());}
    {MULTIPLICACION}    {return new Symbol(MULTIPLICACION, yyline+1, yycolumn+1, yytext());}
    {DIVISION}          {return new Symbol(DIVISION, yyline+1, yycolumn+1, yytext());}

    {NUMERO}            {return new Symbol(NUMERO, yyline+1, yycolumn+1, yytext());}
    {ALFANUMERICO}      {return new Symbol(ALFANUMERICO, yyline+1, yycolumn+1, yytext());}

    {Ignore}            {/*IGNORE*/}

}

[^] {

}
