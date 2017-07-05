#language: pt
@teste
Funcionalidade: Economia

Cenario: Verificar o valor do dolar
    Dado que estou no site do UOL
    Quando acessar a tela de Economia
    E verificar o valor do dolar
    Então o valor do dolar deve ser menor que "3.20"