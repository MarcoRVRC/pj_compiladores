package umg.compiladores;

import java_cup.runtime.*;

%%

%public
%class Lexer
%char
%line
%column
%cup

%{
    private Symbol symbol(int tipo, Object valor) {
        return new Symbol(tipo, yyline, yycolumn, valor);
    }
%}

palabra = [a-zA-Z]+
digito = [0-9]+
identificador = [a-zA-Z][a-zA-Z0-9]*
espacios_blanco = [\r|\n|\r\n| |\t]

%%

//Reglas léxicas
"public"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PUBLICO, yytext());}

"private"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PRIVADO, yytext());}

"static"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.STATIC, yytext());}

"class"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.CLASE, yytext());}

"main"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MAIN, yytext());}

"args"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.ARGS, yytext());}

"void"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.VACIO, yytext());}

"float"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.FLOAT, yytext());}
"double"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.DOBLE, yytext());}
"int"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.INTEGER, yytext());}
"long"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.LONG, yytext());}
"short"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SHORT, yytext());}
"String"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.TEXTO, yytext());}
"boolean"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.BOOL, yytext());}
"new"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.NUEVO, yytext());}
"if"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SI, yytext());}
"else"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.ADEMAS, yytext());}
"for"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.REPETIR, yytext());}
"while"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MIENTRAS, yytext());}
"do"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.HACER, yytext());}
"switch"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.CAMBIO, yytext());}
"case"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.CASO, yytext());}
"break"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.ROMPER, yytext());}
"Scanner"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SCAN, yytext());}
"next"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE, yytext());}
"nextInt"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_INT, yytext());}
"nextFloat"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_FLOAT, yytext());}
"nextLine"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_LINEA, yytext());}
"nextLong"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_LONG, yytext());}
"nextShort"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_SHORT, yytext());}
"nextBoolean"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_BOOL, yytext());}
"nextDouble"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SIGUIENTE_DOBLE, yytext());}
"out"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SALIDA, yytext());}
"print"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.IMPRIMIR, yytext());}
"println"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.IMPRIMIR_LINEA, yytext());}
"return"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.RETORNAR, yytext());}
"System"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SYSTEM, yytext());}
"in"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.IN, yytext());}
"true"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.VERDAD, yytext());}
"false"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.FALSO, yytext());}
"="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.ASIGNAR, yytext());}
">"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MAYOR, yytext());}
"<"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MENOR, yytext());}
"=="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.IGUAL, yytext());}
"!="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.DIFERENTE, yytext());}
"<="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MENOR_IGUAL, yytext());}
">="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MAYOR_IGUAL, yytext());}
"+"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.SUMA, yytext());}
"-"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.RESTA, yytext());}
"*"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.MULTI, yytext());}
"^"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.POTENCIA, yytext());}
"/"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.DIVIDIR, yytext());}

"&&"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.AND, yytext());}
"||"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.OR, yytext());}
"!"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.NOT, yytext());}
"."         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PUNTO, yytext());}
";"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PUNTO_COMA, yytext());}
":"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.DOS_PUNTOS, yytext());}
"_"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.GUION_BAJO, yytext());}
","         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); return symbol(sym.COMA, yytext());}
"\""         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); }
"'"         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); return symbol(sym.COMILLA_SIMPLE_CIERRA, yytext()); }
"("         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PARENTESIS_ABRE, yytext());}
")"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.PARENTESIS_CIERRA, yytext());}
"{"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.LLAVE_ABRE, yytext());}
"}"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.LLAVE_CIERRA, yytext());}
"["         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.CORCHETE_ABRE, yytext());}
"]"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.CORCHETE_CIERRA, yytext());}
\"[^\"]*\"  { System.out.println("Lexema: "
              + yytext()
              + " columna : "
              + yychar
              + " fila : "
              + yyline ); return symbol(sym.COMILLAS_DOBLES, yytext());}

{identificador} { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.IDENTIFICADOR, yytext());}

{digito}    { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); return symbol(sym.DIGITO, new Integer(yytext()));}

{espacios_blanco}   { /*Ignorar estos símbolos*/ }