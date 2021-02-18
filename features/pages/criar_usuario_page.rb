class CriarPage
  include HTTParty
  attr_accessor :response

  def initialize
    @url_base = URL['index']
    @users    = URL['users']
    @token    = TOKEN['token']
    @payload  = PayloadCreate.new
  end

  def create_valid_user
    url = @url_base + @users
    @body = @payload.create_valid_user
    headers = { 'Authorization' => @token, 'Content-Type' => 'application/json' }
    HTTParty.post(url, headers: headers, body: @body.to_json)
  end

  def create_invalid_user
    url = @url_base + @users
    @body = @payload.create_invalid_user
    headers = { 'Authorization' => @token, 'Content-Type' => 'application/json' }
    HTTParty.post(url, headers: headers, body: @body.to_json)
  end
end
