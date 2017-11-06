Feature: Login usuario
    Como um usuario
    Eu quero entrar na minha conta 
    Para que eu possa ter minhas informações salvas 
    
    Scenario: Login com sucesso - provider
      Given Eu estou na pagina de login, nao estou logado e sou provider
      And Eu coloco mc@troinha no campo email
      And Eu coloco 123mctroia123 no campo password
      And Eu clico em Entrar
      Then Eu devo ser direcionado para a pagina do dashboard provider
      And Eu devo ver o texto Meus estabelecimentos 
      
    Scenario: Login sem sucesso - email invalido - provider
      Given Eu estou na pagina de login, nao estou logado e sou provider
      And Eu coloco troia@mc no campo email
      And Eu coloco 123mctroia123 no campo password
      And Eu clico em Entrar
      Then Eu devo ver o texto Usuário não encontrado!

    Scenario: Login sem sucesso - senha invalida - provider
      Given Eu estou na pagina de login, nao estou logado e sou provider
      And Eu coloco mc@troinha no campo email
      And Eu coloco 123 no campo password
      And Eu clico em Entrar
      Then Eu devo ver o texto Usuário ou senha incorretas!  

    Scenario: Login com sucesso - cliente
      Given Eu estou na pagina de login, nao estou logado e sou cliente
      And Eu coloco mc@dada no campo email
      And Eu coloco dadaboladao no campo password
      And Eu clico em Entrar
      Then Eu devo ser direcionado para a pagina do cliente
      Then Eu devo ver o texto Bares e restaurantes perto de você
      
    Scenario: Login sem sucesso - email invalido - cliente
      Given Eu estou na pagina de login, nao estou logado e sou cliente
      And Eu coloco dada@mc no campo email
      And Eu coloco 123567 no campo password
      And Eu clico em Entrar
      Then Eu devo ver o texto Usuário não encontrado!

    Scenario: Login sem sucesso - senha invalida - provider
      Given Eu estou na pagina de login, nao estou logado e sou provider
      And Eu coloco mc@troinha no campo email
      And Eu coloco 123 no campo password
      And Eu clico em Entrar
      Then Eu devo ver o texto Usuário ou senha incorretas!       