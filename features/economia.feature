#language: pt
@economia
Funcionalidade: Economia
    Eu como usuario do site
    Quero acessar a tela de Economia
    Para vizualizar o preço do dólar

@valor_dolar
Cenario: Verificar o valor do dólar
    Dado que estou no site do UOL
    Quando acessar a tela de Economia
    E verificar o valor do dolar
    Então o valor do dolar deve ser menor que "3.20"