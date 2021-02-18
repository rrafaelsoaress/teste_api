include Helpers

Dado('que eu tenha a rota de criação de Usuário') do
  # url is being called by the method below
end

Quando('faço uma requisição com dados validos') do
  @response = @post_page.create_valid_user
end

Entao('o usuário é criado') do
  expect(@response.code).to eq(200)
end

Entao('é apresentado na listagem de usuários') do
  @id = parse_response(@response)['data']['id']
  @response = @get_page.get_user_list(@id)
  expect(@response['data'][0]['id']).to eq @id
end

Quando('faço uma requisição com dados invalidos') do
  @response = @post_page.create_invalid_user
end

Entao('deve retornar codigo {string}') do |code|
  @response = parse_response(@response)
  expect(@response['code']).to eq code.to_i
end
