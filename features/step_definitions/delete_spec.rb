include Helpers

Dado('que eu tenha a rota de exclusão') do
  # url is being called by the method below
end

Dado('tenha um usuário criado') do
  steps %(
    Quando faço uma requisição com dados validos
    Então o usuário é criado
  )
end

Quando('excluo o usuário') do
  @id = parse_response(@response)['data']['id']
  @delete_page.delete_user(@id)
end

Entao('os dados são excluidos') do
  @response = @get_page.get_user_list(@id)
  expect(@response['data']).to be_empty
end
