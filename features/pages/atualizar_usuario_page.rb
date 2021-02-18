class PutPage
  include Helpers
  include HTTParty

  def initialize
    @url_base = URL['index']
    @users    = URL['users']
    @token    = TOKEN['token']
    @payload  = PayloadCreate.new
  end

  def update_user(user, update)
    url = @url_base + @users + "/#{user}"
    case update
    when 'nome'
      @body = @payload.update_user_name
    when 'email'
      @body = @payload.update_user_email
    when 'sexo'
      @body = @payload.update_user_gender
    when 'status'
      @body = @payload.update_user_status
    end
    headers = { 'Authorization' => @token, 'Content-Type' => 'application/json' }
    HTTParty.put(url, headers: headers, body: @body.to_json)
  end

  def validate_update(response, info)
    case info
    when 'nome'
      parse_response(response)['data']['name']
    when 'email'
      parse_response(response)['data']['email']
    when 'sexo'
      parse_response(response)['data']['gender']
    when 'status'
      parse_response(response)['data']['status']
    end
  end
end
