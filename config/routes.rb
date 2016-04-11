# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/iss/:id', to: 'iss#index'
post '/iss/:id', to: 'iss#req'
