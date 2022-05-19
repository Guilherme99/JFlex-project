%%
%class search
%standalone

%line
%column

INTEIRO = 0|[1-9][0-9]*
STRING = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
ID = "italo"
BRANCO = [\n| |\t|\r]

%%
(a|b)+abb {System.out.printf(
"*** encontrado *%s+ na linha %d, coluna %d\n\n",
yytext(), yyline, yycolumn);
}
{ID} {System.out.printf(
"identificador encontrado *%s+ na linha %d, coluna %d\n\n",
yytext(), yyline, yycolumn);
}
{STRING} {System.out.printf(
"string encontrado *%s+ na linha %d, coluna %d\n\n",
yytext(), yyline, yycolumn);
}
{INTEIRO} {System.out.printf(
"número encontrado *%s+ na linha %d, coluna %d\n\n",
yytext(), yyline, yycolumn);
}
{BRANCO} {System.out.printf(
"espaço em branco encontrado *%s+ na linha %d, coluna %d\n\n",
yytext(), yyline, yycolumn);
}

\n {/* Do nothing */}
.  {/* Do nothing */}