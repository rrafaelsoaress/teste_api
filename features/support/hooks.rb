require 'httparty'

Before do
  @delete_page = DeletePage.new
  @get_page    = GetPage.new
  @post_page   = PostPage.new
  @put_page    = PutPage.new
end
