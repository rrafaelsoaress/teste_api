module Helpers
  def parse_response(response)
    JSON.parse(response.body)
  end

  def save_user_data(response, data)
    case data
    when 'nome'
      parse_response(response)['data']['name']
    when 'email'
      parse_response(response)['data']['email']
    when 'sexo'
      parse_response(@response)['data']['gender']
    when 'status'
      parse_response(@response)['data']['status']
    end
  end
end
