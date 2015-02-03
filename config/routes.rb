Rails.application.routes.draw do
  
  root "pages#home"

  # type-of-request URL => controller#action
  get "/home" => "pages#home"
  get "/house" => "pages#home"


  # NEWS_POST RESOURCE

  # new

  # create

  # index
  get "/news_posts" => "news_posts#index"

  # show

  # edit

  # update

  # destroy

end
