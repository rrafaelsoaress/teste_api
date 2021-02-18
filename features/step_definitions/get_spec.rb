Dado('que eu tenha a rota de listagem') do
  # url is being called by the method below
end

Quando('faço uma requisição') do
  @response = @get_page.get_user_list
end

Entao('a listagem é apresentada') do
  expect(@response.code).to eq(200)
end
