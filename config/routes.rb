Rails.application.routes.draw do
  
  root "pages#home"

  # type-of-request URL => controller#action
  get "/home" => "pages#home"
  get "/house" => "pages#home"


  # NEWS_POST RESOURCE

  # new
  get "/news_posts/new" => "news_posts#new"

  # create
  post "/news_posts" => "news_posts#create"

  # index
  get "/news_posts" => "news_posts#index"

  # show
  get "/news_posts/:id" => "news_posts#show"

  # edit

  # update

  # destroy

end
