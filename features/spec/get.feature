#language:pt

@get
Funcionalidade: Listar usuario

  Contexto: Rota de Listagem de Usuário
    Dado que eu tenha a rota de listagem

  @listar_todos
  Cenario: Listar todos os usuários
    Quando faço uma requisição
    Então a listagem é apresentada
