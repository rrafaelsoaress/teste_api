include Helpers

Dado('que eu tenha a rota de alteração') do
  # url is being called by the method below
end

Quando('altero {string} com um valor') do |info|
  @info = info
  @user = parse_response(@response)['data']['id']
  @data = save_user_data(@response, info)
end

Quando('faço a requisição') do
  @response = @atualizar_page.update_user(@user, @info)
end

Entao('os dados são alterados') do
  @update = @atualizar_page.validate_update(@response, @info)
  @buscar_page.get_user(@user)
  expect(@data).not_to eq @update
end
