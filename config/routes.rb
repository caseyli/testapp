Rails.application.routes.draw do
  # type request => controller and action
  get "/home" => "pages#home"
  get "/house" => "pages#home"
end
