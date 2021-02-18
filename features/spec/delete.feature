#language:pt

@delete
Funcionalidade: Deletar usuário

  Contexto: Rota de Exclusão
    Dado que eu tenha a rota de exclusão

  @deletar_usuario @teste
  Cenario: Deletar Usuário
    E tenha um usuário criado
    Quando excluo o usuário
    Então os dados são excluidos
