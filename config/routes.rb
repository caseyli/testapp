Rails.application.routes.draw do
  
  root "pages#home"

  # type-of-request URL => controller#action
  get "/home" => "pages#home"
  get "/house" => "pages#home"

end
