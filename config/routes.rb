Rails.application.routes.draw do
  get 'test/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'

  get '/welcome' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'
  get '/kitten/:size' => 'pages#kitten', as: 'kitten'
  get '/lotsakittens/:size' => 'pages#kittens', as: 'kittens'
  get '/secrets/:magic_word' => 'pages#secrets', as: 'secrets'

  get '/test/index' => 'test#index', as: 'test'

end
