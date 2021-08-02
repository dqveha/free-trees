Rails.application.routes.draw do
  root to: 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :albums do
    resources :songs
  end
end


# Creating a root route is also very simple. For instance, if we wanted our application's home page to be the list of all albums, we could do this:

# Rails.application.routes.draw do
  # get 'home/index'
#   root to: 'albums#index'
#   ...
# end

# We can also specify that a group of resources should only have certain actions by using either :except or :only. For example, if we didn't want users to destroy Songs, we might do this:

# ...
#     resources :songs, except: [:destroy]
# ...

# If we wanted users only to be able to see a list of Songs but not be able to do any other CRUD functionality, we could do this:
  
#   ...
#       resources :songs, only: [:index]
#   ...