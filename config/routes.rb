Rails.application.routes.draw do
  scope '/api' do
    post '/users', to: 'users#create'
    get '/users/random', to: 'users#random'
    get '/users/:id', to: 'users#show'
    put '/users/:id', to: 'users#update'
    delete '/users/:id', to: 'users#destroy'
  end
end
