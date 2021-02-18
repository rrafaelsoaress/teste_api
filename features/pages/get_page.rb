class GetPage
  include Helpers
  include HTTParty
  attr_accessor :response

  def initialize
    @url_base = URL['index']
    @users    = URL['users']
  end

  def get_user_list(args = {})
    url = @url_base + @users
    query = {
      id: args
    }
    HTTParty.get(url, query: query)
  end

  def get_user(user)
    url = @url_base + @users + "/#{user}"
    HTTParty.get(url)
  end

  private

  def return_id(response)
    parse_response(response)['data']['id']
  end
end
