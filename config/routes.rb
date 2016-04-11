# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/iss/:id', to: 'iss#index'
post '/iss' to: 'iss#req'
