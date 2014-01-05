IcetrailsApi::Application.routes.draw do
  resources :contacts

  resources :events

  resources :users

  root :to => "home#index"
  get '/send_sms' => 'send_sms#index'
  post '/send_sms' => 'send_sms#create'
end
