Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # route to test your configuration
  
   # root "articles#index"
   get '/cats', to: 'controller#cat'

  get '/hello', to: 'application#hello_world'
  get '/cats', to: 'application#Cat'

      get '*path',
      to: 'fallback#index',
      
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
