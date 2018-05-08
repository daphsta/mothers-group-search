# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'home#index'
get '/home', to: 'home#index'

get '/sign_up', to: 'sign_up#new'
post '/sign_up', to: 'sign_up#create', as: :sign_up
get '/sign_in', to: 'sign_in#new'
post '/sign_in', to: 'sign_in#create', as: :sign_in
