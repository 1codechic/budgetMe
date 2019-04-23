Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    delete '/users/:id' => 'users#destroy'

    get '/categories' => 'categories#index'
    post '/categories' => 'categories#create'
    get '/categories/:id' => 'categories#show'
    delete '/categories/:id' => 'categories#destroy'

    get '/budgets' => 'budgets#index'
    post '/budgets' => 'budgets#create'
    get '/budgets/:id' => 'budgets#show'
    delete '/budgets/:id' => 'budgets#destroy'



    get '/expenses' => 'expenses#index'
    post '/expenses' => 'expenses#create'
    get '/expenses/:id' => 'expenses#show'
    delete '/expenses/:id' => 'expenses#destroy'



  end


end
