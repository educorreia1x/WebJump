#language: pt

Funcionalidade: Interagir com a pagina WebJump
    Visitar a pagina e interagir com os elementos presentes.

    @botao
    Cenario: Clicar nos botoes One, Two, e Four
    
        Dado que eu acesso a pagina
        E clico no botao One
        E clico no botao Two
        E clico no botao Four
        Entao verifico a ausencia dos mesmos

    @iframe
    Cenario: Clicar nos botoes dentro do Iframe

        Dado que eu acesso a pagina
        E clico no botao One no iframe
        E clico no botao Two no iframe
        E clico no botao Four no iframe
        Entao verifico a ausencia dos botoes no iframe

    @teste
    Cenario: Preencher campo, Clicar no botao, checar a opcao, selecionar opcao e validar imagem

        Dado que eu acesso a pagina
        E preencho o campo com o nome
        E clico no botao One
        E checo a opcao OptionThree
        E seleciono a opcao ExampleTwo
        Entao valido a existencia da imagem do logo Selenium Webdriver