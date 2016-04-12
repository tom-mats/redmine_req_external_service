# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/iss/:id', to: 'iss#index'
post '/iss/:id', to: 'iss#req'
get '/zip/:id', to: 'zip#index'
post '/zip/:id', to: 'zip#req'
get '/rrrc/:id', to: 'rrrc#index'
post '/rrrc/:id', to: 'rrrc#req'
