#language:pt

@post
Funcionalidade: Criar Usuário

  Contexto: Rota de Criação
    Dado que eu tenha a rota de criação de Usuário

  @usuario_valido @teste
  Cenario: Criar Usuário valido
    Quando faço uma requisição com dados validos
    Então o usuário é criado
    E é apresentado na listagem de usuários

  @usuario_invalido
  Cenario: Criar Usuário Invalido
    Quando faço uma requisição com dados invalidos
    Então deve retornar codigo "422"
