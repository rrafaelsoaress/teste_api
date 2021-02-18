class DeletarPage
  include HTTParty
  attr_accessor :response

  def initialize
    @url_base = URL['index']
    @users    = URL['users']
    @token    = TOKEN['token']
    @payload  = PayloadCreate.new
  end

  def delete_user(user)
    url = @url_base + @users + "/#{user}"
    headers = { 'Authorization' => @token, 'Content-Type' => 'application/json' }
    HTTParty.delete(url, headers: headers)
  end
end
