class NewsPostsController < ApplicationController

  def index
    @news_posts = NewsPost.all
  end

end
