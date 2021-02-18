#language:pt

@put
Funcionalidade: Alterar usuário

  Contexto: Rota de Alteração
    Dado que eu tenha a rota de alteração

  @alterar_usuario @teste
  Esquema do Cenario: Alterar Usuário
    E tenha um usuário criado
    Quando altero "<informação>" com um valor
    E faço a requisição
    Então os dados são alterados

    Exemplos:
      | informação   |
      | nome         |
      | email        |
      # | sexo         |
      | status       |
