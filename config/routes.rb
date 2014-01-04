IcetrailsApi::Application.routes.draw do
  root :to => "home#index"
  get '/send_sms' => 'send_sms#index'
  post '/send_sms' => 'send_sms#create'
end
