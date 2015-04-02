Rails.application.routes.draw do
  
  devise_for :users
  resources :products

  root "pages#home"

  # type-of-request URL => controller#action
  get "/home" => "pages#home"
  get "/house" => "pages#home"


  # NEWS_POST RESOURCE
  resources :news_posts

  # # new
  # get "/news_posts/new" => "news_posts#new"

  # # create
  # post "/news_posts" => "news_posts#create"

  # # index
  # get "/news_posts" => "news_posts#index"

  # # show
  # get "/news_posts/:id" => "news_posts#show", as: :news_post

  # # edit
  # get "/news_posts/:id/edit" => "news_posts#edit"

  # # update
  # patch "/news_posts/:id" => "news_posts#update"

  # # destroy
  # delete "/news_posts/:id" => "news_posts#destroy"

  # Products Resource

end
