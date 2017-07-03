#language: pt

Funcionalidade: Economia

Cenario: Verificar o valor do dolar
    Dado que estou no site do UOL
    Quando acesso a tela de Economia
        E verifico o valor do dolar
    Então devo ver que o valor do dolar é menor que "3,20"