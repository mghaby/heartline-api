Rails.application.routes.draw do
  scope '/api' do
    post '/users', to: 'users#create'
    # put 'users/reset', to: 'users#reset'
    get '/users/random', to: 'users#random'
    get '/users/:id', to: 'users#show'
    put '/users/:id', to: 'users#update'
    delete '/users/:id', to: 'users#destroy'
    post '/users/sign_in', to: 'users#sign_in'
  end
end
