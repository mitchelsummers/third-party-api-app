Rails.application.routes.draw do
  get "/articles/:search_term" => "articles#index"
end