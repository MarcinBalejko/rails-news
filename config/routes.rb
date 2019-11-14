Rails.application.routes.draw do
  get '/search' => 'search#search'
  post '/search' => 'search#search'
end
